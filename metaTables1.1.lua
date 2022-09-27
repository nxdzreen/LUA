ayam = { kaki = "2", kepak ="4", kepala ="1" }
itik = {}

local poultry = { __index = ayam } --linked ayam into poultry

setmetatable(itik, poultry)	--linked itik as metatable poultry

print (itik.kaki)		--there is no kaki in itik, so will use value from ayam


