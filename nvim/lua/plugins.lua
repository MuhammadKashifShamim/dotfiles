local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use { "catppuccin/nvim", as = "catppuccin" } -- Theme
  use 'nvim-tree/nvim-web-devicons'            -- File Icons
  use 'nvim-lualine/lualine.nvim'              -- Statusline
  use 'L3MON4D3/LuaSnip'                       -- Snippets Engine
  use 'hrsh7th/cmp-buffer'                     -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'                   -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                       -- Completion
  use {                                        -- Syntax highlighting
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'neovim/nvim-lspconfig'             -- LSP
  use 'glepnir/lspsaga.nvim'              -- LSP UIs
  use 'onsails/lspkind-nvim'              -- VSCode-like pictograms
  use 'jose-elias-alvarez/null-ls.nvim'   -- Use Neovim as a language server to inject LSP diagnostic, code actions and more via Lua
  use 'williamboman/mason.nvim'           -- Installer for LSPs, DAPs, Linters & Formatters
  use 'williamboman/mason-lspconfig.nvim' -- Bridges Mason with lspconfig

  use 'windwp/nvim-autopairs'             -- Automatic brakets closing
  use 'windwp/nvim-ts-autotag'            -- Automatic treesitter tags closing
  use 'fedepujol/move.nvim'               -- Moving lines and blocks
  use {                                   -- Comments handling
    'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }

  use 'nvim-lua/plenary.nvim'                      -- Common utilities
  use 'nvim-telescope/telescope.nvim'              -- Fuzzy finder
  use 'nvim-telescope/telescope-file-browser.nvim' -- File browser extention for telescope

  use 'akinsho/bufferline.nvim'                    -- Buffer line
  use 'norcalli/nvim-colorizer.lua'                -- Color highlighter

  use 'lewis6991/gitsigns.nvim'                    -- Git Decorations
  use 'dinhhuy258/git.nvim'                        -- For git blame and browser
end)

-- TO DO
--  [X] remove MunifTanjim/prettier.nvim and use default configs in null-ls
--  [X] update lspconfig to setup native tailwindcss server
--  [X] add move.nvim for moving blocks and lines
--  [X] add numToStr/Comment.nvim & JoosepAlviste/nvim-ts-context-commentstring for comments
--  [] add goolord/alpha-nvim as startup dashboard
--  [] integrate akinsho/toggleterm of floating terminals
--  [] add Lazygit config with toggleterm
--  [] use folke/which-key as a keymapping cheetsheet
--  [] use ThePrimeagen/harpoon for marking files as quick revisit
--  [] integrate ThePrimeagen/refactoring for refactoring
