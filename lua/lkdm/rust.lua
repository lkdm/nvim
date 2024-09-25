vim.g.rustaceanvim = {
    -- Plugin configuration
    tools = {
    },
    -- LSP configuration
    server = {
        on_attach = function(client, bufnr)
            -- you can also put keymaps in here
           map("n", "<D-.>", ":lua vim.cmd.RustLsp('codeAction')<CR>", { silent = true })
           map("n", "<D-,>", ":lua vim.cmd.RustLsp { 'hover', 'actions' }<CR>", { silent = true })
        end,
        default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
            },
        },
    },
    -- DAP configuration
    dap = {
    },
}

