print "Guess A Number"
math.randomseed(os.time())

--num =math.random()	-- between 0 and 1
randNum =math.random(10)	-- between 1 and LIMIT
--num =math.random(10,100)	-- between BOTTOM and LIMIT

print(randNum)


guess = io.read("*n")		--get the input from user
print(guess)				--reprint the input from user


if guess < randNum then
	print"Too Low"

elseif guess > randNum then
	print"Too High"

elseif guess == randNum then
	print"Correct Guess"
end
