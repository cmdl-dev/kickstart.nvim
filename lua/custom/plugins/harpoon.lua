return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    init = function()
      require('harpoon').setup()
    end,
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
	"<leader>a",
	function() require("harpoon"):list():add() end,
	desc = "[H]arpoon Add",
      },
      {
        '<C-e>',
        function()
          require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())
        end,
      },
      {
        '<C-h>',
        function()
          require('harpoon'):list():select(1)
        end,
      },
      {
        '<C-t>',
        function()
          require('harpoon'):list():select(2)
        end,
      },
      {
        '<C-n>',
        function()
          require('harpoon'):list():select(3)
        end,
      },
      {
        '<C-s>',
        function()
          require('harpoon'):list():select(4)
        end,
      },
    },
  },
}
