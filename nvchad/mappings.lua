-- custom.mappings

local M = {}

M.dap = {
  n = {
    ["<F5>"] = {
            function()
              require('dap').continue()
            end,
            "dap .continue()"
    },
    ["<F10>"] = {
            function()
              require('dap').step_over()
            end,
            "dap .step_over()"
    },
    ["<F11>"] = {
            function()
              require('dap').step_out()
            end,
            "dap .step_out()"
    },
    ["<leader>b"] = {
            function()
              require('dap').toggle_breakpoint()
            end,
            "dap ..toggle_breakpoint()"
    },
    ["<leader>lp"] = {
            function()
              require('dap').repl.open()
            end,
            "dap .repl.open()"
    },
    ["<leader>dl"] = {
            function()
              require('dap').run_last()
            end,
            "dap .run_last()"
    },
  },
}


M.lspconfig = {
   n = {
      ["g#"] = {
        function()
            vim.lsp.buf.implementation()
         end,
         "   lsp implementation",
      },
      ["<F2>"] = {
         function()
            vim.lsp.buf.rename()
         end,
         "   lsp rename",
      },
   },
}

M.telescope = {
    n = {
      -- find
      ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "  find files" },
      ["<C-F>"] = { "<cmd> Telescope grep_string <CR>", "   live grep" },
   }, 
   i = {
      -- find
      ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "  find files" },
      ["<C-F>"] = { "<cmd> Telescope grep_string <CR>", "   live grep" },
   },
}

return M
