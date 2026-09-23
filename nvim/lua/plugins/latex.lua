return {
  {
    "lervag/vimtex",
    lazy = false, -- vimtex must load eagerly; lazy-loading breaks its callbacks
    init = function()
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_skim_sync = 1      -- forward search after compile
      vim.g.vimtex_view_skim_activate = 1  -- bring Skim forward on jump
      vim.g.vimtex_view_skim_reading_bar = 1

      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = "build",
        out_dir = "build",
        callback = 1,
        continuous = 1,
        options = {
          "-shell-escape",
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
        },
      }

      vim.g.vimtex_quickfix_open_on_warning = 0
      vim.g.vimtex_quickfix_ignore_filters = {
        "Underfull \\\\hbox",
        "Overfull \\\\hbox",
        "LaTeX Warning: .\\+ float specifier changed to",
        "Package hyperref Warning: Token not allowed in a PDF string",
      }

      vim.g.vimtex_syntax_conceal_disable = 0
      vim.opt.conceallevel = 2
    end,
    keys = {
      { "<localleader>l", "", desc = "+vimtex" },
    },
  },

  {
    "L3MON4D3/LuaSnip",
    opts = function(_, opts)
      opts = opts or {}
      opts.enable_autosnippets = true
      return opts
    end,
  },
}
