-------------------------------------------------------------------------------
-- Status line at the bottom
-- nvim-lualine/lualine.nvim
-------------------------------------------------------------------------------

local lualine = require("lualine")
local settings = require("configuration")
local utils = require("utils.functions")

local theme = settings.theme
local style = settings.theme_style
local config_root = vim.fn.stdpath("config") .. "/lua/themes/lualine/"
local theme_path = config_root .. style .. ".lua"

if utils.file_or_dir_exists(theme_path) then
  theme = require("themes.lualine." .. style)
else
  theme_path = config_root .. theme .. ".lua"
  if utils.file_or_dir_exists(theme_path) then
    theme = require("themes.lualine." .. theme)
  else
    theme = "auto"
  end
end

local function session_name()
  return require("possession.session").session_name or ""
end
-- local session_status = {}
-- if settings.session_manager == "possession" then
--   local poss_status = require("nvim-possession").status()
--   if poss_status ~= nil then
--     session_status = { poss_status }
--   end
-- end

local tabline_cfg = {}
if settings.enable_tabline then
  tabline_cfg = {
    -- lualine_a = {},
    lualine_a = { require("tabline").tabline_buffers },
    lualine_b = {},
    -- lualine_b = { require("tabline").tabline_tabs },
    lualine_c = {
      {
        "filename",
        path = 3,
        filetype_names = {
          TelescopePrompt = "Telescope",
          dashboard = "Dashboard",
          packer = "Packer",
          fzf = "FZF",
          alpha = "Alpha",
        },
      },
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  }
end

local winbar_cfg = {}
local inactive_winbar_cfg = {}
if settings.enable_winbar then
  winbar_cfg = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      { "filename", path = 1, color = { bg = "NONE" } },
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  }
  inactive_winbar_cfg = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      { "filename", path = 1, color = { bg = "NONE" } },
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  }
end

local fmt_stat = function()
  local stat = ""
  stat = stat .. "spaces=" .. vim.opt_local.tabstop._value
  return stat
end

lualine.setup({
  options = {
    globalstatus = true,
    icons_enabled = true,
    -- theme = 'auto',
    theme = theme,
    --component_separators = { left = '', right = '' },
    component_separators = { left = "", right = "" },
    --section_separators = { left = '', right = '' },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      "alpha",
      "neo-tree",
      "NvimTree",
      "Outline",
      "toggleterm",
      "dap-repl",
      "packer",
      "Trouble",
      "dapui_scopes",
      "dapui_breakpoints",
      "dapui_stacks",
      "dapui_watches",
      "dap-terminal",
      "dapui_console",
      "dashboard",
      "help",
      "lazy",
      "lir",
      "neogitstatus",
      "oil",
      "spectre_panel",
      "startify",
    },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    -- lualine_c = { session_name },
    lualine_c = {
      { -- show session name
        session_name,
        icon = { " Session:", align = "left" },
        padding = { left = 0, right = 1 },
        separator = "|",
      },
    },
    lualine_x = { fmt_stat, "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },

  tabline = tabline_cfg,
  winbar = winbar_cfg,
  inactive_winbar = inactive_winbar_cfg,

  extensions = { "neo-tree", "fzf", "toggleterm", "nvim-dap-ui", "quickfix" },
})

if settings.disable_statusline then
  require("lualine").hide({
    place = { "statusline" },
    unhide = vim.o.statusline == "",
  })
end
