-- Disable compatibility with vi which can cause unexpected issues
vim.opt.compatible = false

-- Set options
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.wildmode = "longest,list"
vim.opt.cc = "80"
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.ttyfast = true
vim.opt.scrolloff = 999
vim.opt.lazyredraw = true
vim.opt.regexpengine = 1
vim.opt.path:append("**")
vim.opt.hidden = true
vim.opt.wildmenu = true
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Enable filetype detection, plugin, and indent
vim.cmd("filetype plugin indent on")

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Set statusline
vim.opt.statusline = "%f%m%=%y 0x%B %l:%c %p%%"
-- Ignore node_modules in wildmenu
vim.opt.wildignore:append("*node_modules*")

-- Create MakeTags command
vim.cmd("command! MakeTags !ctags -R .")

-- Netrw settings
-- Example: https://github.com/doom-neovim/doom-nvim/blob/d878cd9a69eb86ad10177d3f974410317ab9f2fe/lua/doom/modules/features/netrw/init.lua
vim.g.netrw_winsize = -22
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4444
vim.g.netrw_altv = 1
vim.g.netrw_liststyle = 3
-- show directories first
vim.g.netrw_sort_sequence = [[[\/]$,*]]
vim.g.netrw_list_hide = vim.fn["netrw_gitignore#Hide"]()
vim.g.netrw_list_hide = vim.g.netrw_list_hide .. ',\\(^\\|\\s\\s\\)\\zs\\.\\S\\+'

-- Set colorscheme
-- vim.cmd("colorscheme quiet")

-- Highlight settings
vim.cmd("highlight Keyword gui=bold")
vim.cmd("highlight Comment gui=italic")
-- vim.cmd("highlight Constant guifg=#999999")
-- vim.cmd("highlight NormalFloat guibg=#333333")

-- Rust-specific settings
vim.cmd("autocmd Filetype rust set comments^=:///")
