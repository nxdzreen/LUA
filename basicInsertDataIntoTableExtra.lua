local grade = { Ali = "77", Jack = "50"}		--already defined few data in table

while true do
	print("Enter the student name (Press q for quit) : ")
	local name = io.read()

	if name == "q" then
		break;
	end

	print("Enter student score: ")
	score = io.read("*n","*l")

	grade[name] = score			--input the score into table
end

print"Printing grades for student/s !!!"

for a,b in pairs(grade) do		--a and b must have value in grade table
	print("Student Name and The Grade: ")
	print(a,b)			--printing value a and b
end

print("Grade for Ali is ",grade.Ali)		--another way to call data in table
print("Grade for Jack is ",grade["Jack"])	--another way to call data in table
