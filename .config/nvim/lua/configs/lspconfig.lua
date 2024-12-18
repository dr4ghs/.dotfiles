-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"
local servers = { "html", "cssls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern("package.json"),
  single_file_support = false,
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl", "templ" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git")
}

lspconfig.ols.setup {}

lspconfig.tailwindcss.setup {
  filetypes = { "css", "templ", "html" }
}

lspconfig.htmx.setup {
  filetypes = { "html", "templ" }
}

lspconfig.denols.setup {
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc")
}

