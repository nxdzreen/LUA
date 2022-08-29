function findMax(...)

	local array = {...}		--assign the first value into array
	local max = ...			--assign the first value to max

	for i=1,#array do		--size of array as LOOP LIMIT
		if array[i]>max then
			max = array[i]
		end
	end

	return max
end

highestValue = findMax(1,3,5,7,5,3,7,22,5,3,26,43)	--list of number
print("The highest value from data set is ",highestValue)
