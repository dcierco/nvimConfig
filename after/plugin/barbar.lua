local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- to Switch between tabs
for i = 1, 9 do
    map('n', '<leader>'..i, ':BufferGoto '..i..'<CR>', opts)
end

-- to move between tabs
map('n', '<leader>]', ':BufferNext<CR>', opts)
map('n', '<leader>[', ':BufferPrevious<CR>', opts)

-- to close current tab
map('n', '<leader>x', ':BufferClose<CR>', opts)

-- to close all tabs except current one
map('n', '<leader>X', ':BufferCloseAllButCurrent<CR>', opts)
