local M = {}

function M.setup(palette)
  vim.g.terminal_color_0 = palette.terminal.c0
  vim.g.terminal_color_1 = palette.terminal.c1
  vim.g.terminal_color_2 = palette.terminal.c2
  vim.g.terminal_color_3 = palette.terminal.c3
  vim.g.terminal_color_4 = palette.terminal.c4
  vim.g.terminal_color_5 = palette.terminal.c5
  vim.g.terminal_color_6 = palette.terminal.c6
  vim.g.terminal_color_7 = palette.terminal.c7
  vim.g.terminal_color_8 = palette.terminal.c8
  vim.g.terminal_color_9 = palette.terminal.c9
  vim.g.terminal_color_10 = palette.terminal.c10
  vim.g.terminal_color_11 = palette.terminal.c11
  vim.g.terminal_color_12 = palette.terminal.c12
  vim.g.terminal_color_13 = palette.terminal.c13
  vim.g.terminal_color_14 = palette.terminal.c14
  vim.g.terminal_color_15 = palette.terminal.c15
  vim.g.terminal_color_background = palette.terminal.bg
  vim.g.terminal_color_foreground = palette.terminal.fg
end

return M
