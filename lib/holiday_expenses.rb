require_relative "Person.rb"
require_relative "Receipt.rb"

andrea = Person.new("andrea")
giorgio = Person.new("giorgio")
mario = Person.new("mario")
soll_16 = Receipt.new

soll_16.add_expense(34, andrea, "Pizza", giorgio, mario)

puts giorgio.money_owed