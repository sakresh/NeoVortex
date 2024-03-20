--Lazy configuration

--nvim.silicon yet to be added -> Screenshot plugin

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({
    -- GitHub copilot like autocompletion using Codeium
    {
        'Exafunction/codeium.vim',
        event = 'BufEnter'
    },

    -- Git integration with fugitive
    {
        "tpope/vim-fugitive",
    },

    -- Fuzzy Finder
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

    -- Color Schemes
	{
		{ 'rose-pine/neovim', name = 'rose-pine' }
	},

    -- IndenLine
    {
        "echasnovski/mini.indentscope",
        version = false, -- wait till new 0.7.0 release to put it back on semver
        opts = {
            -- symbol = "▏",
            symbol = "│",
            options = { try_as_border = true },
        },
        callback = function()
            vim.b.miniindentscope_disable = true
        end,
    },

    -- Comments for neovim
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },


    -- Parser
	{
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		}, build = ':TSUpdate',
	},

    -- Harpoon(For Jumping between files instantly)
	{
		'ThePrimeagen/harpoon',
		branch = 'harpoon2',
		dependecies = {
			"nvim-lua/plenary.nvim"
		}
	},

    -- UndoTree(Reverting back to changes)
	{
		'mbbill/undotree'
	},

    -- Trouble for code diagnostics
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },

    -- AutoPairs
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},

    -- LSP
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},


})

