local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end

require("mason").setup()

require("mason-nvim-dap").setup({
    ensure_installed = { 
        "codelldb",
        "delve",
        "go-debug-adapter"
    }
})
-- dap.listeners.before.event_terminated["dapui_config"] = function()
--     dapui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
--     dapui.close()
-- end
--
