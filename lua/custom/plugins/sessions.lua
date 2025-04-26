return {
  'rmagatti/auto-session',
  lazy = false,
  dependencies = {
    'nvim-telescope/telescope.nvim', -- Only needed if you want to use session lens
  },
  config = function()
    require('auto-session').setup {
      log_level = 'error',
      -- auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      session_lens = {
        buftypes_to_ignore = {},
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
      vim.keymap.set('n', '<leader>sss', require('auto-session.session-lens').search_session, { desc = '[S]earch [S]aved [S]essions' }),
    }
  end,
}
