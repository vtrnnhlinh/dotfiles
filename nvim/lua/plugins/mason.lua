---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        -- add more arguments for adding more language servers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  -- use mason-nvim-dap to configure DAP installations
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "python",
        "codelldb",  -- Use codelldb for C++
      },
      automatic_installation = true,
      handlers = {
        function(config)
          require('mason-nvim-dap').default_setup(config)
        end,
        python = function(config)
          config.adapters = {
            type = "executable",
            command = "/usr/bin/python3",
            args = {
              "-m",
              "debugpy.adapter",
            },
          }
          require('mason-nvim-dap').default_setup(config)
        end,
        cpp = function(config)
          config.adapters = {
            type = 'server',
            port = 13000,
            executable = {
              command = 'codelldb',
              args = { '--port', '13000' },
            },
          }
          config.configurations = {
            {
              name = 'Launch C++ File',
              type = 'codelldb',
              request = 'launch',
              program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
              end,
              cwd = '${workspaceFolder}',
              stopAtEntry = false,
              args = {},
              environment = {},
              externalConsole = false,
              setupCommands = {
                {
                  text = '-enable-pretty-printing',
                  description = 'enable pretty printing',
                  ignoreFailures = true,
                },
              },
            },
          }
          require('mason-nvim-dap').default_setup(config)
        end,
      },
    },
  },
}

