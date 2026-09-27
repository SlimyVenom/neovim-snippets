-- data_structures.lua

local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- DSU (Disjoint Set Union)
  s('dsu', {
    t {
      'class DSU {',
      'public:',
      '    vll parent;',
      '    vll size;',
      '',
      '    DSU(ll n) {',
      '        parent.resize(n);',
      '        size.resize(n, 1);',
      '        rep(i, 0, n) {',
      '            parent[i] = i;',
      '        }',
      '    }',
      '',
      '    ll find(ll x) {',
      '        if (parent[x] == x)',
      '            return x;',
      '        return parent[x] = find(parent[x]);',
      '    }',
      '',
      '    void unite(ll a, ll b) {',
      '        a = find(a);',
      '        b = find(b);',
      '',
      '        if (a == b)',
      '            return;',
      '',
      '        if (size[a] < size[b])',
      '            swap(a, b);',
      '',
      '        parent[b] = a;',
      '        size[a] += size[b];',
      '    }',
      '};',
    },
  }),
}
