vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

  	-- for Telescope
  	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.2',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

   	-- for Treesitteer
   	use {
       	'nvim-treesitter/nvim-treesitter',
       	run = ':TSUpdate'
   	}

    -- for trouble (make it double)
    use {
        'folke/trouble.nvim',
        config = function()
            require("trouble").setup {
            }
        end
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'dev-v3',
        requires = {
            -- To manage LSP servers from neovim
             {'williamboman/mason.nvim'},
             {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    -- idk what for (yet)
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("laytan/cloak.nvim")

    -- for go
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua' -- recommended if need floating window support
    use 'neovim/nvim-lspconfig'

    -- for undo tree
    use("mbbill/undotree")

    use("nvim-treesitter/nvim-treesitter-context");

   	-- for BarBar
	use 'nvim-tree/nvim-web-devicons'
	use 'lewis6991/gitsigns.nvim'
    use 'romgrk/barbar.nvim'

    -- for statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

	-- for theming
    use { "catppuccin/nvim", as = "catppuccin" }

	-- Git stuff
	use 'airblade/vim-gitgutter'

	-- for vim commands
	use 'tpope/vim-fugitive'

	-- you know what this is
	use 'github/copilot.vim'

end)

