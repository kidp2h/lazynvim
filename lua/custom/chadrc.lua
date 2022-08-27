local M = {}
local override = require "custom.override"

M.plugins = {

  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
    ["goolord/alpha-nvim"] = override.alpha,
    ["williamboman/mason.nvim"] = override.mason,
    ["nvim-telescope/telescope.nvim"] = override.telescope,
    ["folke/which-key.nvim"] = override.whichkey,
    ["NvChad/nvterm"] = override.nvterm,
  },

  user = require "custom.plugins",
}

M.ui = {
  theme = "chadracula",
  hl_add = require("custom.highlights").new_hlgroups,
  theme_toggle = { "chadracula", "gruvchad" },
  statusline = {
    separator_style = "arrow",
  },
  transparency = true,
  hl_override = require("custom.highlights").overriden_hlgroups,
}
M.mappings = require "custom.mappings"
return M