#Person class; each instance represents a person on the trip and stores how much the person has spent, as well as how much each person owes the others

class Person

	@@persons_in_group = []
	attr_accessor :total_spent
	attr_reader :money_owed 	#This is a hash containing (person name => amount owed)
	attr_reader :name

	def self.persons_in_group
		@@persons_in_group
	end

	def initialize(name)
		@name = name
		@@persons_in_group << name
		@total_spent = 0
	end

	def owes_to person, amount
		@money_owed ||= {}
		(@money_owed[person.name] == nil) ? (@money_owed[person.name] = amount) : (@money_owed[person.name] += amount)
	end

end
