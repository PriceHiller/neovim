local line = '[link here](https://aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa) text afterwards'
vim.opt.swapfile = false
vim.opt.wrap = true
vim.opt.showbreak = ">>>"
vim.opt.breakindent = true
vim.opt.linebreak = true
vim.opt.breakat = ' ()[]'
vim.opt.number = true
vim.opt.conceallevel = 2
vim.cmd('edit! ' .. vim.fn.tempname())
local ns = vim.api.nvim_create_namespace('conceal wrap behavior')
for linenr = 0, 9, 1 do
  vim.api.nvim_buf_set_lines(0, linenr, -1, false, { line })
  vim.api.nvim_buf_set_extmark(0, ns, linenr, 0, {
    end_col = 807,
    end_row = linenr,
    conceal = '',
    virt_text = {
      { 'link here', 'Underlined' },
    },
    virt_text_pos = 'overlay',
    strict = true,
  })
end
