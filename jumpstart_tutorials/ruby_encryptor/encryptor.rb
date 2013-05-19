#TUTORIAL DONE FROM JUMPSTART LABS AT http://tutorials.jumpstartlab.com/
require 'rubygems'
require 'highline/import'

def get_password(prompt = 'Password: ')
	ask(prompt) do |q| q.echo = false
	end
end

	def cipher(rotation)
		characters = (' '..'z').to_a
		rotated_characters = characters.rotate(rotation)
		Hash[characters.zip(rotated_characters)]
	end

	def encrypt_letter(letter, rotation)
		cipher_for_rotation = cipher(rotation)
		cipher_for_rotation[letter]
	end

	def encrypt(string, rotation)
		letters = string.split("")

		results = letters.collect do |stuff|
			encrypted_letter = encrypt_letter(stuff, rotation)
		end
		results.join
		print results
	end

	def decrypt(string, rotation)
		encrypt(string, -rotation)
		return string
	end

	def encrypt_file(filename, rotation)
		# 1. Create the file hand to the input file
		input = File.open(filename, "r")
		# 2. Read the text of the input file
		input_text = input.read
		# 3. Encrypt the text
		encrypted_text = encrypt(input_text, rotation)
		# 4. Create a name for the output file
		confidential_filename = filename + ".encrypted"
		# 5. Create an output file handle
		confidential = File.open(confidential_filename, "w")
		# 6. Write out the text
		confidential.write(encrypted_text)
		# 7. Close the file
		confidential.close
	end

	def decrypt_file(filename, rotation)
		# 1. Create the file handle to the encrypted file
		input = File.open(filename, "r")
		# 2. Read the encrypted text
		input_text = input.read
		# 3. Decrypt the text by passing in the text and rotation
		decrypted_text = decrypt(input_text, rotation)
		# 4. Create a name for the decrypted file
		nosecret_filename = filename.gsub("encrypted", "decrypted")
		# 5. Create an output file handle
		nosecret = File.open(nosecret_filename, "w")
		# 6. Write out the text
		nosecret.write(decrypted_text)
		# 7. Close the file
		nosecret.close
	end

	def supported_characters
		(' '..'z').to_a
	end

	def crack (message)
		supported_characters.count.times.collect do |attempt|
			puts decrypt(message, attempt)
		end
	end

end