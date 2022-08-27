for i=1,15 do
	if i<5 then
		print "Below 5"
	elseif i<10 then
		print "Below 10"
	else
		break	--will go to break statement asfter passing below 10 condition
	end

	print ("Start Loop Again",i)
end

print "Done all loop"
