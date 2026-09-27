local snippets = {}

local path = vim.fn.stdpath 'config' .. '/lua/snippets/cpp'

for _, file in ipairs(vim.fn.readdir(path)) do
  if file:match '%.lua$' then
    local module = file:gsub('%.lua$', '')

    local ok, loaded = pcall(require, 'snippets.cpp.' .. module)

    if ok and type(loaded) == 'table' then
      vim.list_extend(snippets, loaded)
    end
  end
end

return snippets
