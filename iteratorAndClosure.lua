
	function simpleCounter(max)
		local count=0
		return function()		--another function

			count = count + 1;	--use 'count' defined locally from outside
			if count > max then
				return nil		--if count > limit, dont return count = STOP
			end

			return count; 		--return count even though it is locally defined
		end
	end

	for x in simpleCounter(10) do
		print(x)			--keep printing value of 'count'
	end
