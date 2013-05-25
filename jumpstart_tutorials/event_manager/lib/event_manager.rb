puts "EventManager Initialized!"

lines = File.readlines "event_attendees.csv"
lines.each do |line, index|
	next if index = 0
	columns = line.split(",")
	name = columns[2]
	puts line
	index

end