return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "basic",
                autoImportCompletions = true,
              },
            },
          },
        },
        pyright = { enabled = false }, -- Disable the standard pyright
      },
    },
  },
}
