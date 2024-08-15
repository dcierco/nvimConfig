require('lualine').setup({
  sections = {
    lualine_x = {
      {
        function()
          return require("noice").api.status.message.get_hl()
        end,
        cond = function()
          return require("noice").api.status.message.has()
        end,
      },
      {
        function()
          return require("noice").api.status.command.get()
        end,
        cond = function()
          return require("noice").api.status.command.has()
        end,
        color = { fg = "#ff9e64" },
      },
      {
        function()
          return require("noice").api.status.mode.get()
        end,
        cond = function()
          return require("noice").api.status.mode.has()
        end,
        color = { fg = "#ff9e64" },
      },
      {
        function()
          return require("noice").api.status.search.get()
        end,
        cond = function()
          return require("noice").api.status.search.has()
        end,
        color = { fg = "#ff9e64" },
      },
    },
  },
})

