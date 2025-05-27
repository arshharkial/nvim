return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {--[[ things you want to change go here]]
  },
  config = function()
    require('toggleterm').setup {
      open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
      autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
      direction = 'tab',
      shell = vim.o.shell,
    }
  end,
}
