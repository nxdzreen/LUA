function generateRandomNumber (maxValue)	--function to generate random num
	math.randomseed(os.time())
	math.random()

	return math.random(maxValue)
end

local randNum = generateRandomNumber(50)	-- randNum contain random number, max value 50


print("Random Number generated is ",randNum)
