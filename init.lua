-- Load packer if installed
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Add your plugins here, for example:
  -- use 'nvim-treesitter/nvim-treesitter'
end)

require("aryan")
require("aryan.packer")
require("autoclose").setup()
require('gitsigns').setup()
require('mini.indentscope').setup()
require('Comment').setup()
