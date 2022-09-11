local meta = {}
local SS = {}

function SS.new(s)		--create function named 'new', receive the value 's'

	local superString = {}
	superString.s = s 	--same as local superstring["s"]
	setmetatable(superString, meta)		--linked the 2 tables
	return superString		--return superString

end

firstName = SS.new("Bill")
print(firstName.s) 		--same as printf(firstName["s"])

