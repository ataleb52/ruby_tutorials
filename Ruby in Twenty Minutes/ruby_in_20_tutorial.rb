#Ruby in Twenty Minutes Tutotrial at http://www.ruby-lang.org/en/documentation/quickstart/

class Greeter
	def initialize(name = "World")
		@name = name
	end

	def say_hi
		puts "Hi #{@name}"
	end

	def say_bye
		puts "Bye #{@name}, come back soon dude!"
	end
end

class MegaGreeter
	attr_accessor :names

	# create the object
	def initialize(names = "world")
		@names = names
	end

	# Say hi to everybody
	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")

			#@names is a list fo some kind, iterate!
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end

	# Say bye to everybody
	def say_bye
		if @names.nil?
			puts"..."
		elsif @names.respond_to?("join")
			#Join the list elements with commas
			puts "Goodbye #{@names.join(", ")}. Come back again soon!"
		else
			puts "Goodbye #{@names}. Com back soon!"
		end
	end
end

if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	#Change name to be "Zeke"
	mg.names = "Zeke"
	mg.say_hi
	mg.say_bye

	# Change the name to an array of names
	mg.names = ["Ahmad", "Amer", "Farah", "Hasan", "Demon"]
	mg.say_hi
	mg.say_bye

	# Change to nil
	mg.names = nil
	mg.say_hi
	mg.say_bye
end


