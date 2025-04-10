-- simple color values
local color = require "shushit.colors"
-- unassigned semantic colors
local swatch = {}
-- semantic colors
local palette = {}

if vim.o.background == "dark" then
  --[[
    DARK THEME
  --]]

  swatch = {
    black = {
      a = color.gray.v45,
      b = color.gray.v55
    },
    red = {
      a = color.red.v60,
      b = color.red.v70
    },
    green = {
      a = color.green.v65,
      b = color.green.v75
    },
    yellow = {
      a = color.yellow.v75,
      b = color.yellow.v85
    },
    blue = {
      a = color.blue.v55,
      b = color.blue.v65
    },
    purple = {
      a = color.purple.v50,
      b = color.purple.v60
    },
    cyan = {
      a = color.cyan.v70,
      b = color.cyan.v80
    },
    white = {
      a = color.gray.v90,
      b = color.gray.v99
    },
    bg = color.gray.v10,
    fg = color.gray.v90
  }

  palette.ui = {
    bg = color.gray.v10,
    cutout = color.gray.v05,
    area = {
      a = {
        normal = color.gray.v80,
        error = color.red.v80,
        warning = color.yellow.v80,
        info = color.blue.v80,
        success = color.green.v80,
        binary = color.cyan.v80,
        special = color.purple.v80
      },
      b = {
        normal = color.gray.v20,
        error = color.red.v20,
        warning = color.yellow.v20,
        info = color.blue.v20,
        success = color.green.v20,
        binary = color.cyan.v20,
        special = color.purple.v20
      },
      c = {
        normal = color.gray.v15,
        error = color.red.v15,
        warning = color.yellow.v15,
        info = color.blue.v15,
        success = color.green.v15,
        binary = color.cyan.v15,
        special = color.purple.v15
      },
      disabled = color.gray.v15
    },
    text = {
      a = {
        normal = color.gray.v10,
        error = color.red.v10,
        warning = color.yellow.v10,
        info = color.blue.v10,
        success = color.green.v10,
        binary = color.cyan.v10,
        special = color.purple.v10
      },
      b = {
        normal = color.gray.v90,
        error = color.red.v90,
        warning = color.yellow.v90,
        info = color.blue.v90,
        success = color.green.v90,
        binary = color.cyan.v90,
        special = color.purple.v90
      },
      c = {
        normal = color.gray.v80,
        error = color.red.v80,
        warning = color.yellow.v80,
        info = color.blue.v80,
        success = color.green.v80,
        binary = color.cyan.v80,
        special = color.purple.v80
      },
      disabled = color.gray.v60
    },
    border = {
      a = {
        normal = color.gray.v90,
        error = color.red.v90,
        warning = color.yellow.v90,
        info = color.blue.v90,
        success = color.green.v90,
        binary = color.cyan.v90,
        special = color.purple.v90
      },
      b = {
        normal = color.gray.v40,
        error = color.red.v40,
        warning = color.yellow.v40,
        info = color.blue.v40,
        success = color.green.v40,
        binary = color.cyan.v40,
        special = color.purple.v40
      },
      c = {
        normal = color.gray.v30,
        error = color.red.v30,
        warning = color.yellow.v30,
        info = color.blue.v30,
        success = color.green.v30,
        binary = color.cyan.v30,
        special = color.purple.v30
      },
      disabled = color.gray.v20
    }
  }
else
  --[[
    LIGHT THEME
  --]]

  swatch = {
    black = {
      a = color.gray.v10,
      b = color.gray.v20
    },
    red = {
      a = color.red.v35,
      b = color.red.v45
    },
    green = {
      a = color.green.v40,
      b = color.green.v50
    },
    yellow = {
      a = color.yellow.v50,
      b = color.yellow.v60
    },
    blue = {
      a = color.blue.v30,
      b = color.blue.v40
    },
    purple = {
      a = color.purple.v25,
      b = color.purple.v35
    },
    cyan = {
      a = color.cyan.v45,
      b = color.cyan.v55
    },
    white = {
      a = color.gray.v55,
      b = color.gray.v65
    },
    bg = color.gray.v90,
    fg = color.gray.v10
  }

  palette.ui = {
    bg = color.gray.v90,
    cutout = color.gray.v95,
    area = {
      a = {
        normal = color.gray.v20,
        error = color.red.v20,
        warning = color.yellow.v20,
        info = color.blue.v20,
        success = color.green.v20,
        binary = color.cyan.v20,
        special = color.purple.v20
      },
      b = {
        normal = color.gray.v80,
        error = color.red.v80,
        warning = color.yellow.v80,
        info = color.blue.v80,
        success = color.green.v80,
        binary = color.cyan.v80,
        special = color.purple.v80
      },
      c = {
        normal = color.gray.v85,
        error = color.red.v85,
        warning = color.yellow.v85,
        info = color.blue.v85,
        success = color.green.v85,
        binary = color.cyan.v85,
        special = color.purple.v85
      },
      disabled = color.gray.v85
    },
    text = {
      a = {
        normal = color.gray.v90,
        error = color.red.v90,
        warning = color.yellow.v90,
        info = color.blue.v90,
        success = color.green.v90,
        binary = color.cyan.v90,
        special = color.purple.v90
      },
      b = {
        normal = color.gray.v10,
        error = color.red.v10,
        warning = color.yellow.v10,
        info = color.blue.v10,
        success = color.green.v10,
        binary = color.cyan.v10,
        special = color.purple.v10
      },
      c = {
        normal = color.gray.v20,
        error = color.red.v20,
        warning = color.yellow.v20,
        info = color.blue.v20,
        success = color.green.v20,
        binary = color.cyan.v20,
        special = color.purple.v20
      },
      disabled = color.gray.v40
    },
    border = {
      a = {
        normal = color.gray.v10,
        error = color.red.v10,
        warning = color.yellow.v10,
        info = color.blue.v10,
        success = color.green.v10,
        binary = color.cyan.v10,
        special = color.purple.v10
      },
      b = {
        normal = color.gray.v60,
        error = color.red.v60,
        warning = color.yellow.v60,
        info = color.blue.v60,
        success = color.green.v60,
        binary = color.cyan.v60,
        special = color.purple.v60
      },
      c = {
        normal = color.gray.v70,
        error = color.red.v70,
        warning = color.yellow.v70,
        info = color.blue.v70,
        success = color.green.v70,
        binary = color.cyan.v70,
        special = color.purple.v70
      },
      disabled = color.gray.v80
    }
  }
end

--[[
  ITERM-LIKE TERMINAL COLORS
--]]

palette.terminal = {
  c0 = swatch.black.a,
  c1 = swatch.red.a,
  c2 = swatch.green.a,
  c3 = swatch.yellow.a,
  c4 = swatch.blue.a,
  c5 = swatch.purple.a,
  c6 = swatch.cyan.a,
  c7 = swatch.white.a,
  c8 = swatch.black.b,
  c9 = swatch.red.b,
  c10 = swatch.green.b,
  c11 = swatch.yellow.b,
  c12 = swatch.blue.b,
  c13 = swatch.purple.b,
  c14 = swatch.cyan.b,
  c15 = swatch.white.b,
  bg = swatch.bg,
  fg = swatch.fg
}

--[[
  SYNTAX COLORS
--]]

palette.syntax = {
  -- identifiers

  variable = {
    any = swatch.blue.a,
    builtin = {
      any = swatch.blue.b
    },
    parameter = {
      any = swatch.blue.a,
      builtin = swatch.blue.b,
    },
    member = {
      any = swatch.green.a,
    }
  },

  constant = {
    any = swatch.blue.a,
    builtin = {
      any = swatch.blue.b
    },
    macro = {
      any = swatch.purple.a,
    }
  },

  module = {
    any = swatch.green.a,
    builtin = {
      any = swatch.green.b
    },
  },

  label = {
    any = swatch.purple.a,
  },

  -- literals

  string = {
    any = swatch.yellow.a,
    documentation = {
      any = swatch.black.b
    },
    regexp = {
      any = swatch.yellow.b
    },
    escape = {
      any = swatch.yellow.b
    },
    special = {
      any = swatch.yellow.b,
      symbol = {
        any = swatch.yellow.b
      },
      url = {
        any = swatch.yellow.b
      },
      path = {
        any = swatch.yellow.b
      },
    }
  },

  character = {
    any = swatch.yellow.a,
    special = {
      any = swatch.yellow.a
    }
  },

  boolean = {
    any = swatch.yellow.b
  },

  number = {
    any = swatch.yellow.b,
    float = {
      any = swatch.yellow.b
    }
  },

  -- types

  type = {
    any = swatch.green.a,
    builtin = {
      any = swatch.green.a
    },
    definition = {
      any = swatch.green.b
    }
  },

  attribute = {
    any = swatch.purple.a,
    builtin = {
      any = swatch.purple.b
    },
  },

  property = {
    any = swatch.blue.a
  },

  -- functions

  func = {
    any = swatch.cyan.a,
    builtin = {
      any = swatch.cyan.b
    },
    call = {
      any = swatch.cyan.a
    },
    macro = {
      any = swatch.purple.a
    },
    method = {
      any = swatch.cyan.a,
      call = {
        any = swatch.cyan.a
      }
    }
  },

  constructor = {
    any = swatch.green.b
  },

  operator = {
    any = swatch.white.a
  },

  -- keywords

  keyword = {
    any = swatch.purple.a,
    coroutine = {
      any = swatch.purple.a
    },
    func = {
      any = swatch.purple.a
    },
    operator = {
      any = swatch.purple.a
    },
    import = {
      any = swatch.purple.a
    },
    type = {
      any = swatch.purple.a
    },
    modifier = {
      any = swatch.purple.a
    },
    recursive = {
      any = swatch.purple.a
    },
    result = {
      any = swatch.purple.a
    },
    debug = {
      any = swatch.purple.a
    },
    exception = {
      any = swatch.purple.a
    },
    conditional = {
      any = swatch.purple.a,
      ternary = {
        any = swatch.white.a
      }
    },
    directive = {
      any = swatch.purple.a,
      define = {
        any = swatch.purple.a
      },
    }
  },

  -- punctuation

  punctuation = {
    any = swatch.black.a,
    delimiter = {
      any = swatch.black.a
    },
    bracket = {
      any = swatch.black.a
    },
    special = {
      any = swatch.black.a
    }
  },

  -- comments

  comment = {
    any = swatch.black.a,
    documentation = {
      any = swatch.black.b
    },
    error = {
      any = swatch.red.a
    },
    warning = {
      any = swatch.yellow.a
    },
    info = {
      any = swatch.blue.a
    },
    hint = {
      any = swatch.green.a
    },
    todo = {
      any = swatch.cyan.b
    },
    note = {
      any = swatch.white.a
    }
  },

  -- markup

  markup = {
    any = nil,
    strong = {
      any = nil
    },
    italic = {
      any = nil
    },
    strikethrough = {
      any = nil
    },
    underline = {
      any = nil
    },
    heading = {
      any = swatch.blue.b,
      h1 = {
        any = swatch.blue.b
      },
      h2 = {
        any = swatch.blue.b
      },
      h3 = {
        any = swatch.blue.b
      },
      h4 = {
        any = swatch.blue.b
      },
      h5 = {
        any = swatch.blue.b
      },
      h6 = {
        any = swatch.blue.b
      }
    },
    quote = {
      any = swatch.green.b
    },
    math = {
      any = swatch.yellow.b
    },
    link = {
      any = swatch.white.a,
      label = {
        any = swatch.blue.b
      },
      url = {
        any = swatch.blue.a
      }
    },
    raw = {
      any = swatch.cyan.b,
      block = {
        any = nil
      }
    },
    list = {
      any = swatch.blue.a,
      checked = {
        any = swatch.blue.b
      },
      unchecked = {
        any = swatch.blue.a
      }
    }
  },

  -- diff

  diff = {
    any = nil,
    plus = {
      any = nil
    },
    minus = {
      any = nil
    },
    delta = {
      any = nil
    },
  },

  -- tag

  tag = {
    any = swatch.blue.a,
    builtin = {
      any = swatch.blue.a
    },
    attribute = {
      any = swatch.blue.b
    },
    delimiter = {
      any = swatch.black.a
    },
  },

  -- special

  error = {
    any = swatch.red.a
  },
  none = {
    any = nil
  },
  conceal = {
    any = nil
  },
  spell = {
    any = nil
  },
  nospell = {
    any = nil
  }

}

-- add custom colors
palette.swatch = swatch

return palette
