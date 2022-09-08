local storageRoom = {}

while true do

	print"Enter the number to stor into the storage room (q for Quit): "

	local inputUser = io.read()
		if inputUser == "q" then
			break;
		end

	storageRoom[#storageRoom+1]= inputUser	--input the data into current size+ 1 for next position
end

print("The list of data in the Storage Room : ")

for i,y in pairs(storageRoom) do
	print(i,y)		--print index and value from the table
end
