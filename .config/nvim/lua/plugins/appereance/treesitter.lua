require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "css", "cpp", "hyprlang", "lua", "nix", "python" },

  sync_install = false,
  auto_install = true,
  highlight = {
	enable = true,
	disable = { "nasm" }
  },
  indent = {
	enable = true
  },
}

vim.filetype.add({
  pattern = { 
  	[".*/.*%.asm"] = "nasm",
    [".*/hypr/.*%.conf"] = "hyprlang"
  },
})
