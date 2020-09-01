require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

billy = CarOwner.new("billy")
ryan = CarOwner.new("ryan")
bill = CarOwner.new("bill")
c = Car.new("dodge", "charger", "muscle", billy)
b = Car.new("bentley", "coupe", "luxury", ryan)
s = Car.new("GMC", "Sierra", "truck", bill)
d = Car.new("dodge", "ram", "truck", billy)

t = Mechanic.new("tyler", "truck")
m = Mechanic.new("matt", "muscle")
j = Mechanic.new("josh", "luxury")
d = Mechanic.new("dwayne", "truck")


binding.pry
0