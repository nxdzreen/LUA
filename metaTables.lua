local ali = {}
print(ali.money)--print nil since ali has NO money

-----------------

local abu = { money = 9999 }
print(abu.money)--show abu's moneyyy

-----------------

local metatable = { __index = abu }	--if any table use this metatable, fill find abu
setmetatable(ali, metatable)		--link ali with metatable(ABU)

print(ali.money)
