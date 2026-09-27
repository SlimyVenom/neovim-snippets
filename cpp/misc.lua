-- miscellaneous

local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Most commonly used for loop:
  s('fin', {
    t {
      'for(ll i = 0; i < n; i++){',
      '    ',
    },
    i(1),
    t {
      '',
      '}',
    },
    i(0),
  }),

  -- Vector input:
  s('vvv', {
    t {
      'll n;',
      'cin >> n;',
      '',
      'vll a(n);',
      'for(ll &ele : a) cin >> ele;',
      '',
      '',
    },
    i(1),
  }),

  -- Graph input:
  s('graph', {
    t {
      'll n, m;',
      'cin >> n >> m;',
      '',
      'vvll adj(n + 1);',
      '',
      'for(int i = 0; i < m; i++){',
      '    ll u, v;',
      '    cin >> u >> v;',
      '',
      '    adj[u].push_back(v);',
      '    adj[v].push_back(u);',
      '}',
      '',
    },
    i(1),
  }),

  s('yes', {
    t {
      'cout << "YES\\n";',
      '',
    },
    i(1),
  }),

  s('no', {
    t {
      'cout << "NO\\n";',
      '',
    },
    i(1),
  }),
}
