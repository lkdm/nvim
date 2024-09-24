require("lkdm.set")
require("lkdm.plugins")
require("lkdm.lsp")
require("lkdm.rust")
print("🚀 We have liftoff")

local augroup = vim.api.nvim_create_augroup
local RustFiletypeGroup = augroup('RustFiletypeGroup', {})
local TypescriptFiletypeGroup = augroup('TypescriptFiletypeGroup', {})

vim.cmd [[colorscheme mountaineer]]
