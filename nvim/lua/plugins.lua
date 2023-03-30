local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use { "catppuccin/nvim", as = "catppuccin" } -- Theme
  use 'glepnir/lspsaga.nvim'                   -- LSP UIs
  use 'nvim-tree/nvim-web-devicons'            -- File Icons
  use 'nvim-lualine/lualine.nvim'              -- Statusline
  use 'neovim/nvim-lspconfig'                  -- LSP
  use 'L3MON4D3/LuaSnip'                       -- Snippets Engine
  use 'onsails/lspkind-nvim'                   -- VSCode-like pictograms
  use 'hrsh7th/cmp-buffer'                     -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'                   -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                       -- Completion
  use {                                        -- Syntax highlighting
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'jose-elias-alvarez/null-ls.nvim'            -- Use Neovim as a language server to inject LSP diagnostic, code actions and more via Lua
  use 'MunifTanjim/prettier.nvim'                  -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'                    -- Installer for LSPs, DAPs, Linters & Formatters
  use 'williamboman/mason-lspconfig.nvim'          -- Bridges Mason with lspconfig

  use 'windwp/nvim-autopairs'                      -- Automatic brakets closing
  use 'windwp/nvim-ts-autotag'                     -- Automatic treesitter tags closing

  use 'nvim-lua/plenary.nvim'                      -- Common utilities
  use 'nvim-telescope/telescope.nvim'              -- Fuzzy finder
  use 'nvim-telescope/telescope-file-browser.nvim' -- File browser extention for telescope

  use 'akinsho/bufferline.nvim'                    -- Buffer line
  use 'norcalli/nvim-colorizer.lua'                -- Color highlighter

  use 'lewis6991/gitsigns.nvim'                    -- Git Decorations
  use 'dinhhuy258/git.nvim'                        -- For git blame and browser
end)

-- TO DO
--  [] remove prettier, null-ls & git
--  [] integrate which-key, dashboard & lazygit
