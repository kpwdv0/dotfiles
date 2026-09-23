return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    ft = { "python", "quarto", "markdown" },
    init = function()
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_auto_open_output = false
      vim.g.molten_wrap_output = true
      vim.g.molten_virt_text_output = true   -- show results as virtual text
      vim.g.molten_virt_lines_off_by_1 = true
    end,
    keys = {
      { "<leader>m",  "",                            desc = "+molten", ft = { "python", "quarto", "markdown" } },
      { "<leader>mi", "<cmd>MoltenInit<cr>",         desc = "Start a kernel" },
      { "<leader>me", "<cmd>MoltenEvaluateOperator<cr>", desc = "Run operator" },
      { "<leader>ml", "<cmd>MoltenEvaluateLine<cr>", desc = "Run line" },
      { "<leader>mr", "<cmd>MoltenReevaluateCell<cr>", desc = "Re-run cell" },
      { "<leader>mo", "<cmd>MoltenShowOutput<cr>",   desc = "Show output" },
      { "<leader>mh", "<cmd>MoltenHideOutput<cr>",   desc = "Hide output" },
      { "<leader>md", "<cmd>MoltenDelete<cr>",       desc = "Delete cell" },
      { "<leader>me", ":<C-u>MoltenEvaluateVisual<cr>gv", mode = "v", desc = "Run selection" },
    },
  },

  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty",          -- Ghostty speaks this too
      max_width = 100,
      max_height = 20,
      max_height_window_percentage = 40,
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "snacks_notif" },
      integrations = {
        markdown = { enabled = true, only_render_image_at_cursor = true },
      },
    },
  },

  {
    "quarto-dev/quarto-nvim",
    dependencies = { "jmbuhr/otter.nvim" },
    ft = { "quarto", "markdown" },
    opts = {
      lspFeatures = { languages = { "python" }, chunks = "all" },
    },
  },
}
