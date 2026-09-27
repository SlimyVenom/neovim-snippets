local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s('lmao', {
    t {
      '#include <stdio.h>',
      '',
      'int main(){',
      '',
      '    ',
    },
    i(1), -- cursor starts here
    t {
      '',
      '',
      '    return 0;',
      '}',
    },
    i(0),
  }),
}
