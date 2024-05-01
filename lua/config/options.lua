
-- Enable syntax highlighting
vim.cmd('syntax on')

-- Enable relative line numbers
vim.opt.relativenumber = true

-- Also enable absolute numbers which work well with relative numbers
vim.opt.number = true

--Tab width
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.wrap = true
vim.opt.textwidth = 80;

vim.api.nvim_create_autocmd("BufWritePre",{
  pattern = "*.js,*.jsx,*.ts,*.tsx,*.json",
  callback = function ()
    vim.lsp.buf.format({async = false})
  end
})


