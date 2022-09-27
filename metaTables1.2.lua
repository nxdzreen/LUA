local vehicle = {}

vehicle.spec = { colour = "red", tyre = 4, weight = "150KG", price = 120000 }		--default table
vehicle.metatable = {__index = vehicle.spec}

function vehicle:new(o)				--constructive function

	--local o = {}		--uncomment if pass nothing into the function, vehicle:new()
	setmetatable(o, vehicle.metatable)	--linked the on with vehicle metatable
	return o

end

--local kancil = vehicle:new()		--use default value for kancil if no other value added

local kelisa = vehicle:new({tyre = 6}) --add new value for kelisa's tyre	--wll passs table tyre=6

--print(kancil.colour)
print(kelisa.tyre)

