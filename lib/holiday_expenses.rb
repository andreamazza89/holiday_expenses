require_relative "Person.rb"
require_relative "Receipt.rb"

def print_help
	puts "This is a stub of the instructions"
end

def add_trip
	print "What would you like to call the trip? "
	trip_name = gets.chomp
	receipt = Receipt.new trip_name
	puts "Trip created, trip name: #{receipt.name}"
end

def add_expense
	puts "This is a stub of the add_expense function"
end

def money_owed
	puts "This is a stub of the money_owed function"
end

puts "Welcome to the holiday expenses application.
Type \"help\" for instructions."

loop do
	print "Enter a command: "
	user_input = gets.chomp	
	
	case user_input
		when "quit"
			break
		when "help"
			print_help
		when "add trip"
			add_trip
		when "add expense"
			add_expense
		when "money owed"
			money_owed
	end	

end

puts "GoodBye"



