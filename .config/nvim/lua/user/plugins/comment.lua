return {
  'numToStr/Comment.nvim',
  lazy = false,
  config = function()
    require('Comment').setup({
      toggler = {
        ---Line-comment toggle keymap
        line = 'gc',
      },
      ---LHS of operator-pending mappings in NORMAL and VISUAL mode
      opleader = {
        ---Line-comment keymap
        line = 'gc',
      },
      ---Enable keybindings
      ---NOTE: If given `false` then the plugin won't create any mappings
      mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = false,
      },
    })
  end,
}
