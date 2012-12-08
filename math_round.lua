-- source: http://lua-users.org/wiki/SimpleRound

local _M = {}
local
function round(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end
_M.round = round

return _M -- return the module
