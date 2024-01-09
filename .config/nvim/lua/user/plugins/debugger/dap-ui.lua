return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")
    dapui.setup()
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end


    -- Keymaps
    vim.keymap.set("n", "<leader>ds", "<cmd>DapContinue<CR>")                    -- debug start
    vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>")            -- debug breakpoint
    vim.keymap.set("n", "<leader>di", "<cmd>DapStepInto<CR>")                    -- debug into
    vim.keymap.set("n", "<leader>do", "<cmd>DapStepOut<CR>")                     -- debug out
    vim.keymap.set("n", "<leader>dn", "<cmd>DapStepOver<CR>")                    -- debug next
    vim.keymap.set("n", "<leader>dt", "<cmd>DapTerminate<CR>")                   -- debug terminate
    vim.keymap.set("n", "<leader>dg", "<cmd>lua require('dap-go').debug_test()<CR>") -- debug individual test closest to cursor. uses dap-go
  end,
}
