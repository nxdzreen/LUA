function add(x,y)
	return x+y
end

function sub(x,y)
	return x-y
end

function div(x,y)
	return x/y
end

function calc(x,y,z)
	return z(x,y)		--value X, operator Z, value Y
end

print "Enter a number"
local x=io.read("*n","*l")			--*n read the Number, *l read the whole line
print "Enter another number"
local y=io.read("*n","*l")

print "Do you want to add, subtract or divide? (Type +, - or / )"
local op = io.read(1, "*l")		--read only 1 character, *l read the whole line

if op == "-" then
	operator = sub
elseif op == "+" then
	operator = add

elseif op == "/" then
	operator = div
end

print(calc(x,y,operator))
