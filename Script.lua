for i = 0, math.huge do
  local suc, _ = pcall(function()
    return debug.getinfo(i)
  end)
  if suc then
    print(tostring(i) .. " stack:")
    for i, v in next, debug.getinfo(i) do
      print(i, v)
    end
  else
    break
  end
end
