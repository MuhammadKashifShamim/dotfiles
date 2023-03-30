local status, catppuccin = pcall(require, 'catppuccin')
if (not status) then return end

catppuccin.setup({
  flavour = "macchiato",
  background = {
    light = "latte",
    dark = "macchiato",
  },
  transparent_background = true,
  show_end_of_buffer = false, -- show the '~' characters after the end of buffers
  term_colors = false,
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  no_italic = false, -- Force no italic
  no_bold = false,   -- Force no bold
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  color_overrides = {},
  custom_highlights = {},
  integrations = {
    treesitter = true,
    cmp = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    notify = false,
    mini = false,
  }
})
vim.cmd.colorscheme('catppuccin')
