local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("trevor.lsp.mason")
require("trevor.lsp.handlers").setup()
require("trevor.lsp.null-ls")

