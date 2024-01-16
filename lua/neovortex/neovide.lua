-- Config only for neovim graphical clinet
if vim.g.neovide then
    vim.o.guifont = "JetBrains Mono:h10"
    vim.g.neovide_transparency = 0.8
    vim.g.transparency = 0.8
    vim.g.neovide_padding_top = 6
    vim.g.neovide_padding_bottom = 6
    vim.g.neovide_padding_right = 6
    vim.g.neovide_padding_left = 6
    vim.keymap.set("n", "<C-S-c>", "\"+y")
    vim.keymap.set("v", "<C-S-c>", "\"+y")
    vim.keymap.set("n", "<C-S-v>", "\"+p")
    vim.keymap.set("v", "<C-S-v>", "\"+p")
end

