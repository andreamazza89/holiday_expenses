require_relative "Person.rb"
require_relative "Receipt.rb"

andrea = Person.new("andrea")
giorgio = Person.new("giorgio")
mario = Person.new("mario")
soll_16 = Receipt.new

soll_16.add_expense(34, andrea, giorgio, "Pizza")

puts soll_16.receipts
puts soll_16.total_spent
puts andrea.total_spent