local z=1					--define local outside for loop

for i=1,2 do
	local y =100			--define local inside for loop
	print("Y local value in for block is ",y)
	print("Z local value in for block is ",z)
end

print("Y local value outside for block is ",y)	--y will ne NIL
print("Z local value outside for block is ",z)
