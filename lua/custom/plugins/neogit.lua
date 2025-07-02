return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    require('neogit').setup {
      kind = 'floating', -- opens neogit in a split
      floating = {
        relative = 'editor',
        width = 0.9,
        height = 0.9,
        style = 'minimal',
        border = 'rounded',
      },
      signs = {
        -- { CLOSED, OPENED }
        section = { '', '' },
        item = { '', '' },
        hunk = { '', '' },
      },
      integrations = { diffview = true }, -- adds integration with diffview.nvim
    }
  end,
}
