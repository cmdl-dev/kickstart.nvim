return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    'BufReadPre ~/Documents/ob-vault/*.md',
    'BufNewFile ~/Documents/ob-vault/*.md',
  },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',

    -- see below for full list of optional dependencies 👇
  },
  init = function()
    require('obsidian').setup {
      workspaces = {
        {
          name = 'work',
          path = '~/Documents/ob-vault',
        },
      },
      notes_subdir = 'Notes',
      daily_notes = {
        -- Optional, if you keep daily notes in a separate directory.
        date_format = '%Y/%m/%d',
        -- Optional, if you want to change the date format of the default alias of daily notes.
        alias_format = '%B %-d, %Y',
        -- Optional, default tags to add to each new daily note created.
        default_tags = { 'daily-notes' },
        -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
        template = nil,
      },
    }
  end,
}
