#begin
	puts "Please input the credit card number"
	
	#get credit card number
	ccnum=gets.chomp
	
	#get checksum digit from input
	chksum_input=ccnum[ccnum.length-1]
	
	#sum doubles
	
	doubles=[]
	
	(ccnum.length-1).times {|i| 
		if i.even? 
		then 
			calc=ccnum[i].to_i*2
			if calc>9
				double = (calc.to_s)[0].to_i+(calc.to_s)[1].to_i
				#puts (calc.to_s)[0].to_i.to_s+"+"+(calc.to_s)[1].to_i.to_s
				doubles << double
			else
				doubles << calc 
			end 
		else 
			doubles << ccnum[i].to_i 
		end}
	
#doubles.select {|n|n>9}
	
	summ=0
	doubles.each {|d| summ+=d}
	
	prod=(summ*9).to_s
	
	#puts prod.length
	chksum_val=prod[prod.length-1]
	
	if chksum_input==chksum_val then puts "Your credit card is valid" else puts "du not invent" end
	#4565419325015023
	
#rescue => e
	#puts "Well, you suck"
#end
