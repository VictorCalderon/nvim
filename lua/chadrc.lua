-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "configs.highlights"

M.ui = {
  -- Basic theming
  theme = "github_dark",
  theme_toggle = { "github_dark", "one_light" },
  transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,

  telescope = { style = "borderless" }, -- borderless / borderedi

  statusline = {
    theme = "vscode_colored",
  },

  nvdash = {
    load_on_startup = true,

    header = {
      "         Victor Calderon         ",
      "                                 ",
      " █▄█▄█▄█▄█▄█▄█▄█▄█▄█▄█▄█▄█▄█▄█▄█ ",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc b m", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

return M
