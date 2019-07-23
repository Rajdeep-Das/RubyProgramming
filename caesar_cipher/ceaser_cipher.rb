class Cipher
   def initialize()
   	@final_string = ""
   end
   def convert(val,num)
  

   	fval = val.getbyte(0) 

    if fval >= 65 && fval <= 90 || fval>=97 && fval <= 122

   		fval = fval + num
  
    	if fval >= 90 && fval <= 97
    		incr = fval - 90
    		fval = 65
    		fval = fval + incr 
    	elsif fval >= 122
    		incr = fval - 122
    		fval = 97
     		fval = fval + incr 
    	end
   end

   	return fval.chr

   end

   def concat_string(chr)
    @final_string += chr
   end
	def caesar_cipher(input_string,num)
		splited_string_arr  = input_string.split("")
		splited_string_arr.each{|val| concat_string(convert(val,num)) }
        return @final_string
	end

end

# c = Cipher.new()
# puts c.caesar_cipher("What a string!", 5)