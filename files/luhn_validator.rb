module LuhnValidator
# Validates credit card number using Luhn Algorithm
# arguments: none
# assumes: a local String called 'number' exists
# returns: true/false whether last digit is correct
def validate_checksum
nums_a = number.to_s.chars.map(&:to_i)
# TODO: use the integers in nums_a to validate its last check digit

credit_card_num_arr=nums_a.reverse

checksum_input=credit_card_num_arr.shift

doubles=[]

(credit_card_num_arr.length).times {|i| 
			if i.even? 
			then 
				calc=credit_card_num_arr[i]*2
				if calc>9
					double = (calc.to_s)[0].to_i+(calc.to_s)[1].to_i
					doubles << double
				else
					doubles << calc 
				end 
			else 
				doubles << credit_card_num_arr[i]
			end}
		
		summ=0
		
		doubles.each {|d| summ+=d}
	
		prod=(summ*9).to_s
		puts prod
		checksum_val=prod[prod.length-1].to_i
	
		if chksum_input==chksum_val then validcc=true else validcc=false end

		return validcc
end
end