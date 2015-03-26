module LuhnValidator
# Validates credit card number using Luhn Algorithm
# arguments: none
# assumes: a local String called 'number' exists
# returns: true/false whether last digit is correct
def validate_checksum
    
nums_a = number.to_s.chars.map(&:to_i)
# TODO: use the integers in nums_a to validate its last check digit

cc_num_arr=nums_a[0..(nums_a.length-2)].reverse

doubles=[]

(cc_num_arr.length).times {|i| i.even? ? cc_num_arr[i]*2>9 ? doubles<<((cc_num_arr[i]*2).to_s)[0].to_i+((cc_num_arr[i]*2).to_s)[1].to_i : doubles <<cc_num_arr[i]*2 : doubles << cc_num_arr[i]}
        
sum=(doubles.reduce(:+)*9).to_s

nums_a.last==sum[sum.length-1].to_i ? true : false

end
end