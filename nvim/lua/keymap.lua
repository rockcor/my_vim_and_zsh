local map = vim.keymap.set

-- Insert mode mappings
-- map("i", "jk", "<Esc>", { desc = "插入模式下连按jk退出" })
-- map("i", "jj", "<end>:<CR>", { desc = "插入模式下连按jj跳到行尾加封号" })
map("i", "uu", "<Esc>u", { desc = "插入模式下连按uu退出并u" })
map("i", "xx", "<Esc>lxi", { desc = "插入模式下xx删除光标处字符，弥补backspace的不足" })
-- map("i", "<C-e>", "<Esc>A)", { desc = "插入模式下按Ctrl-e跳到行尾加括号" })

-- Normal and Visual mode mappings
-- map({ "n", "v" }, "<space>", "$", { desc = "空格到行尾，也可以用封号" })
map("n", "yj", "yyp", { desc = "普通模式下yj等同于yyp" })
map("n", "yk", "yyP", { desc = "普通模式下yk等同于yyP" })
map("n", "<F3>", ":set wrap!<CR>", { desc = "<F3>开关自动折行（代码比较长用）" })
map("n", "<leader>1", ":w<CR>", { desc = "<leader>1 保存" })
map("n", "<leader>2", ":wa<CR>", { desc = "<leader>2 保存所有" })
map("n", "<leader>3", ":xa<CR>", { desc = "<leader>3 保存并退出" })
map("n", "<leader>0", ":q!<CR>", { desc = "<leader>0 退出不保存" })
map("n", "<leader>9", ":bp|bd#<CR>", { desc = "<leader>9 切换到上一个buffer并关闭当前" })

-- Delete/change without yanking into the default register
map("n", "x", '"_x', { desc = "普通模式下删除字符不复制到寄存器" })
map("n", "c", '"_c', { desc = "普通模式下改变文本不复制到寄存器" })
map("n", "s", '"_s', { desc = "普通模式下替换字符不复制到寄存器" })
map("n", "S", '"_dd', { desc = "普通模式下删除整行不复制到寄存器" })
map("n", "X", '"_X', { desc = "普通模式下删除字符(后退)不复制到寄存器" })
map("v", "X", '"_X', { desc = "可视模式下删除字符不复制到寄存器" })
map("v", "x", '"_x', { desc = "可视模式下删除字符不复制到寄存器" })
map("v", "R", '"_xp', { desc = "可视模式下替换选中文本" })

-- Move lines
map("n", "m", "ddp", { desc = "向下交换当前行" })
map("n", "M", "ddkP", { desc = "向上交换当前行" })
map("n", "<C-m>", "M", { desc = "Ctrl-m 同 M" })
map("n", "<C-h>", "H", { desc = "Ctrl-h 跳到屏幕开头" })
map("n", "<C-l>", "L", { desc = "Ctrl-l 跳到屏幕结尾" })

-- Other settings
vim.opt.whichwrap:remove { "<", ">", "h", "l" }
vim.opt.clipboard = "unnamed"
vim.opt.foldmethod = "indent"
vim.opt.foldnestmax = 3
