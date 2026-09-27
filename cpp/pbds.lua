-- pbds.lua

local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Policy-Based Data Structures (PBDS) standalone snippet
  s('pbds', {
    t {
      '#include <ext/pb_ds/assoc_container.hpp>',
      '#include <ext/pb_ds/tree_policy.hpp>',
      'using namespace __gnu_pbds;',
      '',
      'template<typename T>',
      'using ordered_set = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;',
      '',
      'template<typename Key, typename Value>',
      'using ordered_map = tree<Key, Value, less<Key>, rb_tree_tag, tree_order_statistics_node_update>;',
      '',
      'struct chash {',
      '    static uint64_t splitmix64(uint64_t x) {',
      '        x += 0x9e3779b97f4a7c15;',
      '        x = (x ^ (x >> 30)) * 0xbf58476d1ce4e5b9;',
      '        x = (x ^ (x >> 27)) * 0x94d049bb133111eb;',
      '        return x ^ (x >> 31);',
      '    }',
      '    size_t operator()(uint64_t x) const {',
      '        static const uint64_t FIXED_RANDOM = chrono::steady_clock::now().time_since_epoch().count();',
      '        return splitmix64(x + FIXED_RANDOM);',
      '    }',
      '};',
      '',
      'template<class K, class V>',
      'using fast_hash_table = gp_hash_table<K, V, chash>;',
    },
  }),
}
