local pal = require("monopink.palette")

return {
  { "pgdouyon/vim-yin-yang", enabled = false },

  { "LazyVim/LazyVim", opts = { colorscheme = "monopink" } },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local c = pal[vim.o.background == "light" and "light" or "dark"]
      local base = { fg = c.fg2, bg = c.bg }
      local theme = {
        normal = {
          a = { fg = c.bg, bg = c.em, gui = "bold" },
          b = { fg = c.fg1, bg = c.bg1 },
          c = base,
        },
        insert  = { a = { fg = c.bg, bg = c.alt, gui = "bold" } },
        visual  = { a = { fg = c.bg, bg = c.fg, gui = "bold" } },
        replace = { a = { fg = c.bg, bg = c.emd, gui = "bold" } },
        command = { a = { fg = c.bg, bg = c.alt, gui = "bold" } },
        inactive = {
          a = { fg = c.fg3, bg = c.bg },
          b = { fg = c.fg3, bg = c.bg },
          c = { fg = c.fg3, bg = c.bg },
        },
      }
      opts.options = vim.tbl_extend("force", opts.options or {}, {
        theme = theme,
        component_separators = "",
        section_separators = "",
        globalstatus = true,
      })
      return opts
    end,
  },
}
