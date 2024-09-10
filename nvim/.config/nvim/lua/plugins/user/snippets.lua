-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      -- include the default astronvim config that calls the setup call
      require "astronvim.plugins.configs.luasnip"(plugin, opts)
      -- load snippets paths
      require("luasnip.loaders.from_vscode").lazy_load {
        vim.fn.stdpath "config" .. "/snippets",
        -- require("my_sys").DEBUG(vim.fn.stdpath("config") .. "/snippets")
      }
    end,
  },
}
