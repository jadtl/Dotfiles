return {
  {
    'stevearc/conform.nvim',
    name = 'formatter',
    lazy = false,
  },
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
  {
    'habamax/vim-godot',
    name = 'godot',
    lazy = true,
  }
}
