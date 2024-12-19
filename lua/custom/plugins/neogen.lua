return {
  'danymat/neogen',
  config = true,
  version = '*',
  init = function()
    require('neogen').setup {}
  end,
  keys = {
    {
      '<leader>ng',
      function()
        require('neogen').generate()
      end,
      desc = '[N]eogen generate',
    },
  },
}
