# Receipt class; each instance is a trip, and stores both overall expenditure, as well as
# every receipt, with information on who paid, what for, who for, etc

class Receipt

	attr_accessor :total_spent
	attr_reader :receipts

	def initialize
		@receipts = []
	end

	def add_expense tot, person, persons_involved, descr
		current_receipt = Hash.new
		current_receipt[:total] = tot
		current_receipt[:paid_by] = person
		current_receipt[:paid_for] = persons_involved #this is an array of persons
		current_receipt[:description] = descr
		current_receipt[:time] = Time.now.asctime				
		@receipts << current_receipt 
	end

end