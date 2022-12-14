local fn = vim.fn


local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

vim.cmd ([[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
    augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
})

return packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'windwp/nvim-autopairs'
    use "numToStr/Comment.nvim"
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'akinsho/bufferline.nvim'
    use 'moll/vim-bbye'
    use 'nvim-lualine/lualine.nvim'
    use 'akinsho/toggleterm.nvim'

    --color schemes
    use 'folke/tokyonight.nvim'

    -- code completion
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"

    -- snippets
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- Lua
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/mason.nvim" -- simple to use language server installer
    use "williamboman/mason-lspconfig.nvim"
    use "jose-elias-alvarez/null-ls.nvim"

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"

    -- Treesitter
    use "nvim-treesitter/nvim-treesitter"
    use "p00f/nvim-ts-rainbow"
    use "JoosepAlviste/nvim-ts-context-commentstring"

    -- Git
    use "lewis6991/gitsigns.nvim"

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

