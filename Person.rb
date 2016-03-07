#Person class; each instance represents a person on the trip and stores how much the person has spent, as well as how much each person owes the others

class Person

	@@persons_in_group = []

	def self.persons_in_group
		@@persons_in_group
	end

	def initialize(name)
		@name = name
		@@persons_in_group << name
	end

	
end