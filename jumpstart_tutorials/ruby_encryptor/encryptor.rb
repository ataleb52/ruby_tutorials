#TUTORIAL DONE FROM JUMPSTART LABS AT http://tutorials.jumpstartlab.com/

class Encryptor
	
	def cipher
	{'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 'e' => 'r',
	 'f' => 's', 'g' => 't', 'h' => 'u', 'i' => 'v', 'j' => 'w',
	 'k' => 'x', 'l' => 'y', 'm' => 'z', 'n' => 'a', 'o' => 'b',
	 'p' => 'c', 'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
	 'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k', 'y' => 'm',
	 'z' => 'm'}
	end

	def encrypt_letter(letter)
		lowercase_letter = letter.downcase
		cipher[lowercase_letter]
	end

	def encrypt(string)
		# 1. Cut the input string into letters
		letters = string.split("")
		# 2. Encrypt the letters one at a time then gather the results
		# 3. Join the results back tother to make a string
	end

end