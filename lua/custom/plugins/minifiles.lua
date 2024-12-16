return {
  'echasnovski/mini.files',
  version = '*',
  init = function()
    require('mini.files').setup()
  end,
  keys = {
    {
      '-',
      function()
        require('mini.files').open()
      end,
      desc = 'Open File Explorer',
    },
  },
}
