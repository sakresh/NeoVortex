vim.keymap.set("n", "<leader>g", vim.cmd.Git)

vim.keymap.set("n", "<leader>p", function()
    vim.cmd.Git('push')
end, opts)

vim.keymap.set("n", "<leader>P", function()
    vim.cmd.Git({'pull',  '--rebase'})
end, opts)

vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts);
