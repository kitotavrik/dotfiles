require("lazy").setup({
	-- Appereance
	{ 'goolord/alpha-nvim' },	
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	
    --
	{
		'romgrk/barbar.nvim',
    	dependencies = {
      		'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      		'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    	},
    	init = function() vim.g.barbar_auto_setup = false end,
    	opts = { },
    	version = '^1.0.0', -- optional: only update when a new 1.x version is released
  	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
	    "nvim-neo-tree/neo-tree.nvim",
	    branch = "v3.x",
	    dependencies = {
	      "nvim-lua/plenary.nvim",
	      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	      "MunifTanjim/nui.nvim",
	      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	    }
	},
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
   	{'akinsho/toggleterm.nvim', version = "*", config = true},


    {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
    },
    
	-- Ide features
	{ 'mfussenegger/nvim-dap' },

	-- Compare
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'hrsh7th/cmp-cmdline' },
	{ 'hrsh7th/nvim-cmp' },

    { '/neovim/nvim-lspconfig' },
})
