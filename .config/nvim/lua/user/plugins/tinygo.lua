-- TinyGo plugin configuration for arduino development.
return {
  "pcolladosoto/tinygo.nvim",
  cmd = { "TinyGoSetTarget", "TinyGoTargets", "TinyGoEnv" },
  config = function()
    require("tinygo").setup()
  end,
}
