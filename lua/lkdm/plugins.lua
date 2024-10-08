local function bootstrap_pckr()
    local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

    if not (vim.uv or vim.loop).fs_stat(pckr_path) then
        vim.fn.system({
            'git',
            'clone',
            "--filter=blob:none",
            'https://github.com/lewis6991/pckr.nvim',
            pckr_path
        })
    end

    vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add {
    -- My plugins here
    'neovim/nvim-lspconfig',
    'rust-lang/rust.vim',
    {
        'mrcjkb/rustaceanvim',
        version = "^5"
    },


    -- LSP Zero https://lsp-zero.netlify.app/docs/getting-started.html
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v4.x' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },

    -- Treesitter
    --'nvim-treesitter/nvim-treesitter',

    -- Markdown
    -- {
    --    "OXY2DEV/markview.nvim",
    --    dependencies = { "nvim-tree/nvim-web-devicons",
    --                     'nvim-treesitter/nvim-treesitter', },
    -- },

    -- Theme
    'TheNiteCoder/mountaineer.vim'
}

-- require("markview").setup({
--     modes = {"n", "no", "c", "i" },
--     hybrid_modes = { "i" },
--     -- This is nice to have
--     callbacks = {
--         on_enable = function (_, win)
--             vim.wo[win].conceallevel = 2;
--             vim.wo[win].concealcursor = "c";
--         end
--     }
-- })
