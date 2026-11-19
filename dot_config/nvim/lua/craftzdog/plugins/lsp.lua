require("mason").setup()
require("mason-tool-installer").setup({
	ensure_installed = {
		"tree-sitter-cli",
		"lua-language-server",
		"prettier",
		"prettierd",
		"selene",
		"shellcheck",
		"shfmt",
		"stylua",
		"eslint-lsp",
		"oxlint",
		"oxfmt",
		"tailwindcss-language-server",
		"vtsls",
		"copilot-language-server",
		"rust-analyzer",
	},
	auto_update = false,
	run_on_start = true,
})

local capabilities = {
	workspace = {
		fileOperations = {
			didRename = true,
			willRename = true,
		},
	},
}
vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(capabilities),
})

vim.lsp.enable({
	"eslint",
	"oxlint",
	"lua_ls",
	"cssls",
	"vtsls",
	"tailwindcss",
	"glsl_analyzer",
	"rust_analyzer",
})

-- Flutter: sets up dartls itself, so don't add it to vim.lsp.enable
require("flutter-tools").setup({
	widget_guides = { enabled = true },
	closing_tags = { enabled = true, prefix = "// " },
	dev_log = { enabled = true, open_cmd = "botright 15split" },
	lsp = {
		capabilities = require("blink.cmp").get_lsp_capabilities(capabilities),
		settings = {
			completeFunctionCalls = true,
			renameFilesWithClasses = "prompt",
			updateImportsOnRename = true,
		},
	},
})
