local function group(name)
  return vim.api.nvim_create_augroup("kira_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("FileType", {
  group = group("prose"),
  pattern = { "markdown", "tex", "plaintex", "text", "gitcommit", "norg", "typst" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true   -- wrap at words, not mid-word
    vim.opt_local.spell = true
    vim.opt_local.spelllang = "en_us"
    vim.opt_local.conceallevel = 2
    vim.keymap.set("n", "j", "gj", { buffer = true })
    vim.keymap.set("n", "k", "gk", { buffer = true })
  end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
  group = group("lastpos"),
  callback = function(ev)
    local exclude = { "gitcommit", "gitrebase" }
    if vim.tbl_contains(exclude, vim.bo[ev.buf].filetype) then return end
    local mark = vim.api.nvim_buf_get_mark(ev.buf, '"')
    local lines = vim.api.nvim_buf_line_count(ev.buf)
    if mark[1] > 0 and mark[1] <= lines then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = group("mkdir"),
  callback = function(ev)
    if ev.match:match("^%w%w+://") then return end
    vim.fn.mkdir(vim.fn.fnamemodify(vim.loop.fs_realpath(ev.match) or ev.match, ":p:h"), "p")
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = group("trim"),
  callback = function()
    if vim.tbl_contains({ "markdown", "diff" }, vim.bo.filetype) then return end
    local view = vim.fn.winsaveview()
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.fn.winrestview(view)
  end,
})

vim.api.nvim_create_autocmd("VimResized", {
  group = group("resize"),
  command = "tabdo wincmd =",
})
