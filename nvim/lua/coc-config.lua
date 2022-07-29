local map = vim.api.nvim_set_keymap
map("n", "<leader>.", "<Plug>(coc-codeaction)", {})
map("n", "<leader>l", ":CocCommand eslint.executeAutofix<CR>", {})
map("n", "gd", "<Plug>(coc-definition)", {silent = true})
map("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})
map("n", "<leader>rn", "<Plug>(coc-rename)", {})
map("n", "<leader>f", ":CocCommand prettier.formatFile<CR>", {noremap = true})
map("i", "<C-Space>", "coc#refresh()", { silent = true, expr = true })
map("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
map("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
map("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
vim.o.hidden = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
