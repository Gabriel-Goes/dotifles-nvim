vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.g.mapleader = " "

vim.opt.termguicolors = true

vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.colorcolumn = "80"

vim.opt.clipboard = 'unnamedplus'
-- vim.opt.clipboard = 'unnamed'

vim.opt.updatetime = 250

-- Configurações do LSP
-- Customizing how diagnostics are displayed
vim.api.nvim_create_autocmd({"CursorHold",
                             "CursorHoldI"},
    {callback = function()
        vim.diagnostic.open_float(nil, {
            focusable = false,
            close_events = {"BufLeave",
                            "CursorMoved",
                            "InsertEnter",
                            "FocusLost"},
            border = 'single',
            source = 'always',
            prefix = ' ',
            scope = 'cursor',
        })
    end,
})

vim.diagnostic.config({
    -- enable buffer diagnostics hover mouse
    float = {
        source = "true",
        preview = true,
        scope = "buffer",
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true
})

-- Aumentar o espaço da primeira coluna antes dos linenumbers
vim.opt.numberwidth = 1
-- Aumentar o tamanho da primeira coluna.
vim.opt.foldcolumn = "1"
-- Aumentar o espaço disponível por caractere no signicons
vim.opt.signcolumn = "yes:1"
--
vim.opt.showmode = true
vim.opt.showcmd = true

vim.opt.guifont = "SourceCodePro:h12"
