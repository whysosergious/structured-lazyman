#!/bin/bash
#
# lazyman - install, initialize, and manage Lazy Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>
#
# shellcheck disable=SC2001,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059

usage() {
  printf "\nUsage: lazyman [-A] [-a] [-b branch] [-d] [-k] [-l] [-m] [-n] [-P] [-q]"
  printf "\n               [-I] [-L cmd] [-rR] [-C url] [-N nvimdir] [-U] [-y] [-u]"
  printf "\nWhere:"
  printf "\n\t-A indicates install all supported Neovim configurations"
  printf "\n\t-a indicates install and initialize AstroNvim"
  printf "\n\t-b 'branch' specifies an nvim-lazyman git branch to checkout"
  printf "\n\t-d indicates debug mode"
  printf "\n\t-k indicates install and initialize Kickstart"
  printf "\n\t-l indicates install and initialize LazyVim"
  printf "\n\t-m indicates install and initialize nvim-multi"
  printf "\n\t-n indicates dry run, don't actually do anything, just printf's"
  printf "\n\t-p indicates use Packer rather than Lazy to initialize"
  printf "\n\t-q indicates quiet install"
  printf "\n\t-I indicates install language servers and tools for coding diagnostics"
  printf "\n\t-L 'cmd' specifies a Lazy command to run in the selected configuration"
  printf "\n\t-r indicates remove the previously installed configuration"
  printf "\n\t-R indicates remove previously installed configuration and backups"
  printf "\n\t-C 'url' specifies a URL to a Neovim configuration git repository"
  printf "\n\t-N 'nvimdir' specifies the folder name to use for the config given by -C"
  printf "\n\t-U indicates update an existing configuration"
  printf "\n\t-y indicates do not prompt, answer 'yes' to any prompt"
  printf "\n\t-u displays this usage message and exits"
  printf "\nCommands act on NVIM_APPNAME, override with '-N nvimdir' or '-A'"
  printf "\nWithout arguments lazyman installs and initializes nvim-lazyman\n"
  exit 1
}

create_backups() {
  ndir="$1"
  [ -d ${HOME}/.config/${ndir} ] && {
    [ "${quiet}" ] || {
    echo "Backing up existing ${ndir} config as ${HOME}/.config/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv ${HOME}/.config/${ndir} ${HOME}/.config/${ndir}-bak$$
    }
  }

  [ -d ${HOME}/.local/share/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Backing up existing ${ndir} plugins as ${HOME}/.local/share/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv ${HOME}/.local/share/${ndir} ${HOME}/.local/share/${ndir}-bak$$
    }
  }

  [ -d ${HOME}/.local/state/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Backing up existing ${ndir} state as ${HOME}/.local/state/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv ${HOME}/.local/state/${ndir} ${HOME}/.local/state/${ndir}-bak$$
    }
  }
  [ -d ${HOME}/.cache/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Backing up existing ${ndir} cache as ${HOME}/.cache/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv ${HOME}/.cache/${ndir} ${HOME}/.cache/${ndir}-bak$$
    }
  }
}

run_command() {
  neodir="$1"
	comm="$2"
  export NVIM_APPNAME="${neodir}"
  [ "${tellme}" ] || {
    if [ "${debug}" ]
    then
      if [ "${packer}" ]
      then
        nvim --headless "+Packer${comm}" +qa
      else
        nvim --headless "+Lazy! ${comm}" +qa
      fi
    else
      if [ "${packer}" ]
      then
        nvim --headless "+Packer${comm}" +qa > /dev/null 2>&1
      else
        nvim --headless "+Lazy! ${comm}" +qa > /dev/null 2>&1
      fi
    fi
  }
}

init_neovim() {
  neodir="$1"
  export NVIM_APPNAME="${neodir}"
  [ "${tellme}" ] || {
    if [ "${debug}" ]
    then
      if [ "${packer}" ]
      then
        nvim --headless "+PackerSync" +qa
        nvim --headless "+PackerInstall" +qa
      else
        nvim --headless "+Lazy! sync" +qa
        nvim --headless "+Lazy! update" +qa
        nvim --headless "+Lazy! install" +qa
      fi
    else
      if [ "${packer}" ]
      then
        nvim --headless "+PackerSync" +qa > /dev/null 2>&1
        nvim --headless "+PackerInstall" +qa > /dev/null 2>&1
      else
        nvim --headless "+Lazy! sync" +qa > /dev/null 2>&1
        nvim --headless "+Lazy! update" +qa > /dev/null 2>&1
        nvim --headless "+Lazy! install" +qa > /dev/null 2>&1
      fi
    fi
    # nvim -c "checkhealth" -c 'qa' > /dev/null 2>&1
  }
}

remove_config() {
  ndir="$1"
  [ "${proceed}" ] || {
    printf "\nYou have requested removal of the Neovim configuration at:"
    printf "\n\t${HOME}/.config/${ndir}\n"
    printf "\nConfirm removal of the Neovim ${ndir} configuration\n"
    while true
    do
      read -p "Remove ${ndir} ? (y/n) " yn
      case $yn in
        [Yy]* )
            break
            ;;
        [Nn]* )
            echo "Aborting removal and exiting"
            exit 0
            ;;
          * ) echo "Please answer yes or no."
            ;;
      esac
    done
  }

  [ -d ${HOME}/.config/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} config at ${HOME}/.config/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.config/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} config backups"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.config/${ndir}-bak*
    }
  }

  [ -d ${HOME}/.local/share/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} plugins at ${HOME}/.local/share/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.local/share/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} plugins backups"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.local/share/${ndir}-bak*
    }
  }

  [ -d ${HOME}/.local/state/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} state at ${HOME}/.local/state/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.local/state/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} state backups"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.local/state/${ndir}-bak*
    }
  }

  [ -d ${HOME}/.cache/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} cache at ${HOME}/.cache/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.cache/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} cache backups"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.cache/${ndir}-bak*
    }
  }
}

lazy_command() {
  ndir="$1"
	comm="$2"
  [ -d ${HOME}/.config/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Running 'Lazy ${comm}' in ${ndir} config at ${HOME}/.config/${ndir}"
    }
    [ "${tellme}" ] || {
      init_neovim "${ndir}"
    }
  }
}

update_config() {
  ndir="$1"
  [ -d ${HOME}/.config/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Updating existing ${ndir} config at ${HOME}/.config/${ndir}"
    }
    [ "${tellme}" ] || {
      git -C ${HOME}/.config/${ndir} pull > /dev/null 2>&1
      init_neovim "${ndir}"
    }
  }
}

set_brew() {
  if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]
  then
    HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
  else
    if [ -x /usr/local/bin/brew ]
    then
      HOMEBREW_HOME="/usr/local"
    else
      if [ -x /opt/homebrew/bin/brew ]
      then
        HOMEBREW_HOME="/opt/homebrew"
      else
        HOMEBREW_HOME=
      fi
    fi
  fi
  if [ "${HOMEBREW_HOME}" ]
  then
    BREW_EXE=
  else
    BREW_EXE="${HOMEBREW_HOME}/bin/brew"
  fi
}

all=
branch=
command=
debug=
langservers=
tellme=
astronvim=
kickstart=
lazyvim=
multivim=
packer=
proceed=
quiet=
remove=
removeall=
update=
url=
name=
lazymandir="nvim-lazyman"
astronvimdir="nvim-astro"
kickstartdir="nvim-kickstart"
lazyvimdir="nvim-LazyVim"
multidir="nvim-multi"
nvimdir="${lazymandir}"
while getopts "aAb:dIklmnL:PqrRUC:N:yu" flag; do
    case $flag in
        a)
            astronvim=1
            nvimdir="${astronvimdir}"
            ;;
        A)
            all=1
            astronvim=1
            kickstart=1
            lazyvim=1
            multivim=1
            nvimdir="${lazymandir} ${lazyvimdir} ${multidir} \
                     ${kickstartdir} ${astronvimdir}"
            ;;
        b)
            branch="${OPTARG}"
            ;;
        d)
            debug="-d"
            ;;
        I)
            langservers=1
            ;;
        k)
            kickstart=1
            nvimdir="${kickstartdir}"
            ;;
        l)
            lazyvim=1
            nvimdir="${lazyvimdir}"
            ;;
        L)
            command="${OPTARG}"
            ;;
        m)
            multivim=1
            nvimdir="${multidir}"
            ;;
        n)
            tellme=1
            ;;
        P)
            packer=1
            ;;
        q)
            quiet=1
            ;;
        r)
            remove=1
            ;;
        R)
            remove=1
            removeall=1
            ;;
        C)
            url="${OPTARG}"
            ;;
        N)
            name="${OPTARG}"
            ;;
        U)
            update=1
            ;;
        y)
            proceed=1
            ;;
        u)
            usage
            ;;
        *)
					  echo "Unrecognized option. Exiting."
            usage
            ;;
    esac
done

[ "${langservers}" ] && {
  if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]
  then
    ${HOME}/.config/${lazymandir}/scripts/install_neovim.sh ${debug} -l
	  exit 0
	fi
	exit 1
}

[ "${name}" ] && nvimdir="${name}"
[ "${url}" ] && {
  [ "${name}" ] || {
    echo "ERROR: '-C url' must be accompanied with '-N nvimdir'"
    usage
  }
}

[ "${nvimdir}" ] || {
  echo "Something went wrong, nvimdir not set. Exiting."
  usage
}

[ "${remove}" ] && {
  for neovim in ${nvimdir}
  do
    remove_config ${neovim}
  done
  exit 0
}

[ "${command}" ] && {
  [ "${all}" ] || [ "${name}" ] || {
    [ "${NVIM_APPNAME}" ] && nvimdir="${NVIM_APPNAME}"
  }
  for neovim in ${nvimdir}
  do
    run_command ${neovim} ${command}
  done
  exit 0
}

[ "${update}" ] && {
  [ "${all}" ] || [ "${name}" ] || {
    [ "${NVIM_APPNAME}" ] && nvimdir="${NVIM_APPNAME}"
  }
  for neovim in ${nvimdir}
  do
    update_config ${neovim}
  done
  exit 0
}

have_git=$(type -p git)
[ "${have_git}" ] || {
  echo "Lazyman requires git but git not found"
  echo "Please install git and retry this lazyman command"
  usage
}

if [ -d ${HOME}/.config/${lazymandir} ]
then
  git -C ${HOME}/.config/${lazymandir} pull > /dev/null 2>&1
  [ "${branch}" ] && {
    git -C ${HOME}/.config/${lazymandir} checkout ${branch} > /dev/null 2>&1
  }
else
  [ "${quiet}" ] || {
    printf "\nCloning nvim-lazyman configuration into ${HOME}/.config/${lazymandir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/doctorfree/nvim-lazyman ${HOME}/.config/${lazymandir} > /dev/null 2>&1
    [ "${branch}" ] && {
      git -C ${HOME}/.config/${lazymandir} checkout ${branch} > /dev/null 2>&1
    }
  }
  [ "${quiet}" ] || printf "done\n"
fi

if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]
then
  ${HOME}/.config/${lazymandir}/scripts/install_neovim.sh ${debug}
  BREW_EXE=
  set_brew
  [ "${BREW_EXE}" ] && eval "$(${BREW_EXE} shellenv)"
  have_nvim=$(type -p nvim)
  [ "${have_nvim}" ] || {
    echo "ERROR: cannot locate neovim"
    echo "Install neovim and retry this install script"
    usage
  }
else
  echo "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh not executable"
  echo "Please check the Lazyman installation and retry this install script"
  usage
fi

for neovim in ${nvimdir}
do
  [ "${neovim}" == "${lazymandir}" ] && continue
  create_backups ${neovim}
done

[ "${astronvim}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning AstroNvim configuration into ${HOME}/.config/${astronvimdir} ... "
  }
  [ "${tellme}" ] || {
    git clone https://github.com/AstroNvim/AstroNvim \
              ${HOME}/.config/${astronvimdir} > /dev/null 2>&1
    [ "${quiet}" ] || {
      printf "\nAdding user configuration into ${HOME}/.config/${astronvimdir}/lua/user ... "
    }
    git clone https://github.com/doctorfree/astronvim \
              ${HOME}/.config/${astronvimdir}/lua/user > /dev/null 2>&1
  }
  [ "${quiet}" ] || printf "done"
}
[ "${kickstart}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning Kickstart configuration into ${HOME}/.config/${kickstartdir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/nvim-lua/kickstart.nvim.git \
      ${HOME}/.config/${kickstartdir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${kickstartdir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}
[ "${lazyvim}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning LazyVim starter configuration into ${HOME}/.config/${lazyvimdir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/LazyVim/starter ${HOME}/.config/${lazyvimdir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${lazyvimdir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}
[ "${multivim}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning nvim-multi configuration into ${HOME}/.config/${multidir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/doctorfree/nvim-multi ${HOME}/.config/${multidir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${multidir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}
[ "${url}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning ${url} into ${HOME}/.config/${nvimdir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      ${url} ${HOME}/.config/${nvimdir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${nvimdir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}

[ "${packer}" ] && {
  PACKER="${HOME}/.local/share/${nvimdir}/site/pack/packer/start/packer.nvim"
  [ -d "${PACKER}" ] || {
    git clone --depth 1 https://github.com/wbthomason/packer.nvim "${PACKER}"
  }
}

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
if [ ${hardlimit} -gt 4096 ]
then
  [ "${tellme}" ] || ulimit -n 4096
else
  [ "${tellme}" ] || ulimit -n ${hardlimit}
fi

for neovim in ${nvimdir}
do
  [ "${quiet}" ] || {
    printf "\n\nInitializing newly installed ${neovim} Neovim configuration ... "
  }
  init_neovim "${neovim}"
  [ "${quiet}" ] || printf "done\n"
done

[ "${tellme}" ] || ulimit -n ${currlimit}

lazyinst=
if [ -f ${HOME}/.local/bin/lazyman ]
then
  [ -f ${HOME}/.config/nvim-lazyman/lazyman.sh ] && {
    diff ${HOME}/.config/nvim-lazyman/lazyman.sh ${HOME}/.local/bin/lazyman > /dev/null || lazyinst=1
  }
else
  lazyinst=1
fi
[ "${lazyinst}" ] && {
  [ "${quiet}" ] || {
    echo "Installing lazyman command in ${HOME}/.local/bin"
    echo ""
    echo "Use ${HOME}/.local/bin/lazyman to explore Lazy Neovim configurations."
    echo "Review the lazyman usage message with:"
    printf "\n\t${HOME}/.local/bin/lazyman -u\n"
  }
}

maninst=
if [ -f ${HOME}/.local/share/man/man1/lazyman.1 ]
then
  [ -f ${HOME}/.config/nvim-lazyman/man/man1/lazyman.1 ] && {
    diff ${HOME}/.config/nvim-lazyman/man/man1/lazyman.1 ${HOME}/.local/share/man/man1/lazyman.1 > /dev/null || maninst=1
  }
else
  maninst=1
fi
[ "${maninst}" ] && {
  [ "${quiet}" ] || {
    echo "Installing lazyman command in ${HOME}/.local/bin"
    echo ""
    echo "Use ${HOME}/.local/bin/lazyman to explore Lazy Neovim configurations."
    echo "Review the lazyman usage message with:"
    printf "\n\t${HOME}/.local/bin/lazyman -u\n"
  }
}

[ "${quiet}" ] || {
  printf "\nTo use this lazyman installed Neovim configuration as the default,"
  printf "\nadd a line like the following to your .bashrc or .zshrc:\n"
  if [ "${all}" ]
  then
    printf '\n\texport NVIM_APPNAME="nvim-lazyman"\n'
  else
    printf "\n\texport NVIM_APPNAME=\"${nvimdir}\"\n"
  fi
  printf "\nTo easily switch between lazyman installed Neovim configurations,"
  printf "\ncreate an alias for each configuration similar to the following:"
  if [ "${all}" ]
  then
    printf "\n\nalias lnvim='function _nvim(){ export NVIM_APPNAME=\"nvim-lazyman\"; nvim \$\* };_nvim'"
  elif [ "${astronvim}" ]
  then
    printf "\n\nalias avim='function _avim(){ export NVIM_APPNAME=\"${nvimdir}\"; nvim \$\* };_avim'"
  elif [ "${kickstart}" ]
  then
    printf "\n\nalias kvim='function _kvim(){ export NVIM_APPNAME=\"${nvimdir}\"; nvim \$\* };_kvim'"
  elif [ "${lazyvim}" ]
  then
    printf "\n\nalias lvim='function _lvim(){ export NVIM_APPNAME=\"${nvimdir}\"; nvim \$\* };_lvim'"
  elif [ "${multivim}" ]
  then
    printf "\n\nalias mvim='function _mvim(){ export NVIM_APPNAME=\"${nvimdir}\"; nvim \$\* };_mvim'"
  else
    printf "\n\nalias lmvim='function _lmvim(){ export NVIM_APPNAME=\"${nvimdir}\"; nvim \$\* };_lmvim'"
  fi
}
printf "\n\n"

[ "${tellme}" ] || {
  [ "${all}" ] && export NVIM_APPNAME="${lazymandir}"
  nvim
}

[ "${lazyinst}" ] && {
  [ "${tellme}" ] || {
    [ -d ${HOME}/.local/bin ] || mkdir -p ${HOME}/.local/bin
    [ -f ${HOME}/.config/nvim-lazyman/lazyman.sh ] && {
      cp ${HOME}/.config/nvim-lazyman/lazyman.sh ${HOME}/.local/bin/lazyman
      chmod 755 ${HOME}/.local/bin/lazyman
    }
  }
}
[ "${maninst}" ] && {
  [ "${tellme}" ] || {
    [ -d ${HOME}/.local/share/man ] || mkdir -p ${HOME}/.local/share/man
    [ -d ${HOME}/.local/share/man/man1 ] || mkdir -p ${HOME}/.local/share/man/man1
    [ -f ${HOME}/.config/nvim-lazyman/man/man1/lazyman.1 ] && {
      cp ${HOME}/.config/nvim-lazyman/man/man1/lazyman.1 ${HOME}/.local/share/man/man1/lazyman.1
      chmod 644 ${HOME}/.local/share/man/man1/lazyman.1
    }
  }
}