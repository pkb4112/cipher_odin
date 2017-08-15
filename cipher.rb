input_string = "" #String to be encrypted
shift = 0 #Amount to shift for encryption


puts "Enter text to be encrypted, Press Enter to Submit"
input_string = gets.chomp

puts "Enter amount to shift characters for encryption"
shift = gets.chomp.to_i

puts "#{input_string} : #{shift}"

def ceasar(text,shift)            #encryption method, takes input string and shift integer
	encrypted_string=""
	text.each_char do |char|     #cycle through each character in the string
		
        if char.match /(\w)/    #don't shift whitespace 
        	char = char.ord            #convert characters to ascii values
			char+=shift                #shift ascii values by shift value
			char=char.chr              # convert ascii value back to characters
        	encrypted_string= encrypted_string + char.to_s   #add characters back into a string
        else
        	encrypted_string=encrypted_string + char
        end
    end 
    return encrypted_string
end

encrypted = ceasar(input_string,shift)
puts encrypted

def decrypt(text)            #decryption method, takes input string
	decrypted_string=""
	puts "Predicted Shift Value?"
	shift_guess=gets.chomp.to_i
	text.each_char do |char|     #cycle through each character in the string
		if char.match /(\S)/   #Don't shift whitespace
			char = char.ord            #convert characters to ascii values
			char-=shift_guess                #shift ascii values by shift value
			char=char.chr              # convert ascii value back to characters
	        decrypted_string= decrypted_string + char.to_s   #add characters back into a string
        else
        	decrypted_string= decrypted_string + char
        end
    end 
    return decrypted_string
end

decrypted = decrypt(encrypted)
puts decrypted