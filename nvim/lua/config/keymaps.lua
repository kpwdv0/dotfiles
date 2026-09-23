local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Escape" })

map("n", "<C-d>", "<C-d>zz", { desc = "Half page down, centred" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page up, centred" })
map("n", "n", "nzzzv", { desc = "Next match, centred" })
map("n", "N", "Nzzzv", { desc = "Prev match, centred" })
map("n", "J", "mzJ`z", { desc = "Join lines, keep cursor put" })

map("x", "p", [["_dP]], { desc = "Paste without yanking the replaced text" })

map("v", "<", "<gv", { desc = "Outdent and reselect" })
map("v", ">", ">gv", { desc = "Indent and reselect" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

map({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
map("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })
map({ "n", "v" }, "<leader>P", [["+p]], { desc = "Paste from system clipboard" })

map({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to black hole" })

map("n", "<leader>cR", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word under cursor" })

map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
map("n", "<leader>uw", function()
  vim.opt.wrap = not vim.opt.wrap:get()
  vim.opt.linebreak = vim.opt.wrap:get()
end, { desc = "Toggle soft wrap" })
map("n", "<leader>uz", function()
  vim.opt.spell = not vim.opt.spell:get()
end, { desc = "Toggle spell check" })

map("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Leave terminal mode" })
