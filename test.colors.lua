local colors = require("colors")
local round = assert(require("math_round").round)

local c = colors.new(130, .8, 0.3) -- green, pretty saturated, somewhat dark
print(tostring(c))
--assert(tostring(c) == "#0f8923", "test 1 #0f8923 fail")

local c = colors.new("#0f8923") -- green, pretty saturated, somewhat dark
print(tostring(c))
assert(tostring(c) == "#0f8923", "test 2 #0f8923 fail")

--assert(c == "#0f8923", "test 3 #0f8923 fail")

print(round(c.H), round(c.S, 1), round(c.L, 1))
assert(round(c.H)    == 130, "test 4.1 fail")
assert(round(c.S, 1) == 0.8, "test 4.2 fail")
assert(round(c.L, 1) == 0.3, "test 4.3 fail")

-- > =c:desaturate_by(.5) -- set saturation to saturation*.5
-- #2d6b38
local c2 = c:desaturate_by(.5)
print(c2)
assert(tostring(c2) == "#2e6b38", "test 5 fail")

-- =c:desaturate_to(.5) -- set saturation to .5
-- #267233
local c2 = c:desaturate_to(.5)
print(c2)
assert(tostring(c2) == "#267232", "test 6 fail")

-- > =c:lighten_by(.5) -- set lightness to lightness*.5
-- #14b72f

	 

-- > =c:lighten_to(.5) -- set lightness to .5
-- #19e53b


-- > =c:hue_offset(180) -- shift hue by 180
-- #890f75


-- > tints = c:tints(5) -- make five tints
-- > for i,t in ipairs(tints) do print(t) end
-- #16c934
-- #3ee95a
-- #7ef091
-- #bef7c8
-- #ffffff

-- > shades = c:shades(5) -- make five shades
-- > for i,s in ipairs(shades) do print(s) end
-- #0c6e1c
-- #095215
-- #06370e
-- #031b07
-- #000000

-- > ctints = c:complementary():tints(5) -- make five tints of the complimentary color
-- > for i,t in ipairs(ctints) do print(t) end
-- #c916ac
-- #e93ecd
-- #f07edd
-- #f7beee
-- #ffffff

--[[
> n1, n2 = c:neighbors(60)  -- get neiboring colors: 60 degees up and down
> for i,t in ipairs(n1:tints()) do print(t) end
#16c98e
#3ee9b0
#7ef0ca
#bef7e4
#ffffff
> for i,t in ipairs(n2:tints()) do print(t) end
#52c916
#77e93e
#a4f07e
#d1f7be
#ffffff
]]--

--[[
>  for i,t in ipairs(c1:tints()) do print(t) end
#8e16c9
#b03ee9
#ca7ef0
#e4bef7
#ffffff
> for i,t in ipairs(c2:tints()) do print(t) end
#c91652
#e93e77
#f07ea4
#f7bed1
#ffffff
]]--


--[[
> t1, t2 = c:triadic()
> for i,t in ipairs(t1:tints()) do print(t) end
#3416c9
#5a3ee9
#917ef0
#c8bef7
#ffffff
> for i,t in ipairs(t2:tints()) do print(t) end
#c93416
#e95a3e
#f0917e
#f7c8be
#ffffff
]]--
