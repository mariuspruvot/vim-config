return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    -- Terminal size
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,

    -- Open mapping
    open_mapping = [[<C-\>]],

    -- Hide line numbers in terminal
    hide_numbers = true,

    -- Shade terminal background
    shade_terminals = true,
    shading_factor = 2,

    -- Start in insert mode
    start_in_insert = true,

    -- Direction: float, horizontal, vertical, tab
    direction = "float",

    -- Close on exit
    close_on_exit = true,

    -- Float terminal options
    float_opts = {
      border = "curved",
      width = function()
        return math.floor(vim.o.columns * 0.9)
      end,
      height = function()
        return math.floor(vim.o.lines * 0.9)
      end,
    },
  },
}
