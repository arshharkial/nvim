return {
  {
    'ThePrimeagen/git-worktree.nvim',
    cmd = {
      'GitWorktree',
      'GitWorktreeCreate',
      'GitWorktreeClose',
      'GitWorktreeList',
    },
    opts = {},
  },
  vim.keymap.set(
    'n',
    '<leader>sW',
    "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
    { silent = true, desc = '[S]witch [W]orktree' }
  ),
  vim.keymap.set(
    'n',
    '<leader>cW',
    "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
    { silent = true, desc = '[C]reate [W]orktree' }
  ),
}
