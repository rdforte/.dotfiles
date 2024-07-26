-- TinyGo plugin configuration for arduino development.
return {
  "pcolladosoto/tinygo.nvim",
  config = function()
    require("tinygo").setup()
  end,
}
