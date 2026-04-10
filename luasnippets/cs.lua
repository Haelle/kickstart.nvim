local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s('///', {
    t '/// <summary>',
    t { '', '/// ' },
    i(1, 'Description'),
    t { '', '/// </summary>' },
  }),
  s('///p', {
    t '/// <param name="',
    i(1, 'name'),
    t '">',
    i(2, 'Description'),
    t '</param>',
  }),
  s('///r', {
    t '/// <returns>',
    i(1, 'Description'),
    t '</returns>',
  }),
  s('///m', {
    t '/// <summary>',
    t { '', '/// ' },
    i(1, 'Description'),
    t { '', '/// </summary>' },
    t { '', '/// <param name="' },
    i(2, 'param'),
    t '">',
    i(3, 'Param description'),
    t '</param>',
    t { '', '/// <returns>' },
    i(4, 'Return description'),
    t '</returns>',
  }),
  s('///c', {
    t '/// <summary>',
    t { '', '/// ' },
    i(1, 'Class description'),
    t { '', '/// </summary>' },
    t { '', '/// <remarks>' },
    t { '', '/// ' },
    i(2, 'Additional remarks'),
    t { '', '/// </remarks>' },
  }),
  s('///e', {
    t '/// <exception cref="',
    i(1, 'ExceptionType'),
    t '">',
    i(2, 'When thrown'),
    t '</exception>',
  }),
}
