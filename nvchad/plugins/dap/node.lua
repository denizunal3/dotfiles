
local M = {}

function M.setup()

  local dap = require "dap"
  dap.adapters.node2 = {
      type = 'executable',
      command = 'node',
     args = {vim.fn.stdpath("config") .. '\\lua\\custom\\vscode-node-debug2\\out\\src\\nodeDebug.js'},
      -- args = {vim.fn.stdpath("config") .. '/lua/custom/vscode-node-debug2/out/src/nodeDebug.js'},

  }

  dap.configurations.javascript = {
    {
      -- For this to work you need to make sure the node process is started with the `--inspect` flag.
      name = 'Attach to process',
      type = 'node2',
      request = 'attach',
      processId = require'dap.utils'.pick_process,
    },
  }

  dap.configurations.typescript = {
    {
      name = 'Attach',
      type = 'node2',
      request = 'attach',
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = 'inspector',
      skipFiles = {'<node_internals>/**/*.js'},
    },
  }

end

return M
