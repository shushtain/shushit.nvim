local palette = require "shushit.palette"

local core = {
  terminal = require "shushit.groups.terminal",
  editor = require "shushit.groups.editor",
  syntax = require "shushit.groups.syntax"
}

local plugins = {
  treesitter = require "shushit.groups.plugins.treesitter"
}

local theme = {}

function theme.colorscheme()
  for _, part in pairs(core) do
    part.setup(palette)
  end
  for _, plugin in pairs(plugins) do
    plugin.setup(palette)
  end
end

return theme
