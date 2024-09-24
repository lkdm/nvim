require("lkdm.set")
require("lkdm.plugins")
require("lkdm.lsp")
require("lkdm.rust")
print("I use nvim btw 🤓")

vim.g.mapleader = ","

-- function for declaring keybinds
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- reload config
map("n", "<leader>r", ":so %<CR>")
map("n", "<leader>ga", ":!git add .<CR><CR>")
map("n", "<leader>gc", ":!git commit -m '")
map("n", "<leader>gp", ":!git push origin<CR>")


vim.cmd [[colorscheme mountaineer]]

