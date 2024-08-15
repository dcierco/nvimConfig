require("dcierco.lazy")
require("dcierco.set")
require("dcierco.remap")

local augroup = vim.api.nvim_create_augroup
local DciercoGroup = augroup('Dcierco', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd('BufWritePre', {
    group = Dcierco,
    pattern = '*',
    command = [[%s/\s\+$//e]],
})

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
        callback = function()
               require('go.format').goimport()
                 end,
                   group = format_sync_grp,
               })



vim.cmd.colorscheme "catppuccin"

require('go').setup()

vim.g.clipboard = {
    name = 'wsl clipboard',
    copy =  { ["+"] = { "wsl_clip" },   ["*"] = { "wsl_clip" } },
    paste = { ["+"] = { "powershell.exe Get-Clipboard | tr -d '\r' | sed -z '$ s/\n$//'" }, ["*"] = { "powershell.exe Get-Clipboard | tr -d '\r' | sed -z '$ s/\n$//'" } },
    cache_enabled = true
}
