# Receipt class; each instance is a trip, and stores both overall expenditure, as well as
# every receipt, with information on who paid, what for, who for, etc

class Receipt

	attr_accessor :total_spent
	attr_reader :receipts

	def initialize
		@receipts = []
		@total_spent = 0
	end

	def add_expense tot, person, descr, *persons_involved 

		#This creates a hash with all the receipt information and adds it to the receipts array
		current_receipt = Hash.new
		current_receipt[:total] = tot
		current_receipt[:paid_by] = person
		current_receipt[:paid_for] = persons_involved #this is an array of persons who owe the person who paid
		current_receipt[:description] = descr
		current_receipt[:time] = Time.now.asctime				
		@receipts << current_receipt 

		#Updates the total spent by the person who paid and the total spent in this trip
		@total_spent += tot
		person.total_spent += tot

		#Updates the table of money owed for each person
		tot_each = tot/(persons_involved.length + 1.0) 
		persons_involved.each {|p| p.owes_to(person, tot_each) }

	end

end