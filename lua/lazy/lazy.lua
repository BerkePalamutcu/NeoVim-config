local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",  -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Function to dynamically load plugins from the 'plugins' directory
-- local function load_plugins()
--   local plugins = {}

--   -- Iterate over all Lua files in the plugins directory and load them
--   for _, file in ipairs(vim.fn.glob("plugins/*.lua", true, true)) do
--     local plugin_config = dofile(file)
--     if type(plugin_config) == 'table' then
--       table.insert(plugins, plugin_config)
--     end
--   end

--   return plugins
-- end  -- Closing the function load_plugins()

-- local plugins = load_plugins()

-- -- Optional: Define any global options for lazy.nvim setup
-- local opts = {
--   -- Additional configurations for lazy.nvim can go here
-- }

require("lazy").setup({import = "plugins"}, opts)
