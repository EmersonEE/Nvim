-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- -- Keymap para insertar texto PlatformIO config
vim.keymap.set("n", "<leader>pi", function()
  local lines = {
    "monitor_speed = 115200",
    "build_flags = ",
    "  -Iinclude",
    ""
  }
  vim.api.nvim_put(lines, "l", true, true)
end, { desc = "Insertar config PIO" })

-- Keymap para insertar texto PlatformIO config
vim.keymap.set("n", "<leader>po", function()
  local lines = {
    "#include <Arduino.h>",
    "void setup() {",
    "}",
    "void loop(){",
    "}",
    ""
  }
  vim.api.nvim_put(lines, "l", true, true)
end, { desc = "Insertar config PIO" })
