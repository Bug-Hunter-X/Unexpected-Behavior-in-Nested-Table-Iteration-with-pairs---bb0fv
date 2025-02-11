local function foo(t)
  local function traverse(tbl, path)
    for k, v in pairs(tbl) do
      local newPath = path .. "." .. k
      if type(v) == "table" then
        traverse(v, newPath)
      else
        print(newPath .. " = " .. v)
      end
    end
  end
  traverse(t, "")
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)
