-- vim.keymap.set("n", "<leader>T", function()
--     require("trouble").toggle()
-- end)

vim.keymap.set("n", "<leader>T", "<cmd>Trouble diagnostics toggle<cr>")
