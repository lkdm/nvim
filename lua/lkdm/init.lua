require("lkdm.set")
require("lkdm.plugins")
require("lkdm.lsp")
print("I use nvim btw 🤓")

vim.g.mapleader = ","

-- function for declaring keybinds
-- opts accepts all https://neovim.io/doc/user/api.html#nvim_set_keymap() 
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        -- merges options with opts dict
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
require("lkdm.rust")
-- reload config
map("n", "<leader>r", ":so %<CR>")

-- git commands
map("n", "<leader>ga", ":!git add .<CR><CR>")
map("n", "<leader>gc", ":!git commit -m '")
map("n", "<leader>gp", ":!git push origin<CR>")
map("n", "<leader>gs", ":!git status<CR>")


vim.cmd [[colorscheme mountaineer]]

