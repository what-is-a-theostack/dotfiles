UnDo
Jc=x
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
       clangd = function(_, opts)
7        opts.capabilities.offsetEncoding = { "utf-16" }
      end,
  },5
  "neovim/nvim-lspconfig",
  opts = {
    servers = { eslint = {} },
    setup = {
      eslint = function()
>        require("lazyvim.util").lsp.on_attach(function(client)
)          if client.name == "eslint" then
H            client.server_capabilities.documentFormattingProvider = true
/          elseif client.name == "tsserver" then
I            client.server_capabilities.documentFormattingProvider = false
          end
        end)
      end,
