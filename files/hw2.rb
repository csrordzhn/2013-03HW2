


	
	credit_card_number="4565419325015023"

		chksum_input=credit_card_number[credit_card_number.length-1]
	
		doubles=[]
	
		(credit_card_number.length-1).times {|i| 
			if i.even? 
			then 
				calc=credit_card_number[i].to_i*2
				if calc>9
					double = (calc.to_s)[0].to_i+(calc.to_s)[1].to_i
					#puts (calc.to_s)[0].to_i.to_s+"+"+(calc.to_s)[1].to_i.to_s
					doubles << double
				else
					doubles << calc 
				end 
			else 
				doubles << credit_card_number[i].to_i 
			end}
	
		summ=0
		doubles.each {|d| summ+=d}
	
		prod=(summ*9).to_s
	
		chksum_val=prod[prod.length-1]
	
		if chksum_input==chksum_val then validcc=true else validcc=false end
	
		return validcc







	
