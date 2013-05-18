class PersonalChef

	def make_toast(color)
		if color.nil?
			puts "How am I supposed to make nothingness toast?" 
		else
			puts "Making your toast #{color}!"
		end
		return self
	end

	def make_eggs(num)
		num.times {
			puts "Making and egg."
		}
		puts "I'm done!"
		return self
	end

	def make_milkshake (flavor)
		puts "One #{flavor} milkshake coming up!"
		return self
	end

	def good_morning
		time = Time.now
		puts "Happy #{time.strftime("%A")}, it's the #{time.strftime("%j")} day of #{time.strftime("%Y")}"
	end

	def gameplan(meals)
		meals.each do |meal|
			puts "We'll have #{meal}..."
		end

		all_meals = meals.join(", ")
		puts "In summary: #{all_meals}"
	end

	def inventory
		produce = {apples: 3, oranges: 1, carrots: 12}
		produce.each do |item, quantity|
			puts "There are #{quantity} #{item} in the fridge."
		end
	end

	def water_status(minutes)
		if minutes < 7
			puts "The water is not boiling yet"
		elsif minutes == 7
			puts "It's just barely boiling"
		elsif minutes == 8
			puts "It's boiling!"
		else 
			puts "Hot! Hot! Hot!"
		end
		return self
	end

	def countdown(counter)
		until counter == 0
			puts "The counter is #{counter}"
			counter -= 1
		end
		return self
	end

	def whatup(greeting, *bros)
		bros.each do |bros|
			puts "#{greeting}, #{bros}"
		end
	end

	Popup.make do |variable|
		
	end

end

frank = PersonalChef.new

class Butler
	def open_front_door
		puts "Opening the front door"
		return self
	end
	
	def open_door (door)
		if door == "front"
			puts "The #{door} is locked"
		elsif door == "back"
			puts "The #{door} just happened to be open!"
		elsif door == "closet"
			puts "Stop creeping"
		else
			puts "Stop opening doors"
		end
	end
end
