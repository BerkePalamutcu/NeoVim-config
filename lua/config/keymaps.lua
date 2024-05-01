-- Set space as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

function _G.tmux_command(cmd)
    os.execute(cmd)
end

vim.api.nvim_set_keymap('n', '<leader>,', ':lua tmux_command("tmux previous-window")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>.', ':lua tmux_command("tmux next-window")<CR>', { noremap = true, silent = true })
