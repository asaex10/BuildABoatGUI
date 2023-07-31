-- https://gist.github.com/haggen/2fd643ea9a261fea2094
local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

function string.random(length)
  math.randomseed(os.time()*5)
  if length > 0 then
    return string.random(length - 1) .. charset:sub(math.random(1, #charset), 1)
  else
    return ""
  end
end
