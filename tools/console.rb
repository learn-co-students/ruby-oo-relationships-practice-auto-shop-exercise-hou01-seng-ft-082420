require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# c1 = Car.new(chevy, camaro, antique)
# c2 = Car.new(ford, mustang, antique)
# c3 = Car.new(audi, r8, exotic)

o1 = CarOwner.new("Payton")
o2 = CarOwner.new("Laura")
# o3 = CarOwner.new("Jack")

m1 = Mechanic.new("Jimmy", "exotic")
m2 = Mechanic.new("Jerry","antique")

c1 = Car.new("chevy", "camaro", "antique",o1,m2)
c2 = Car.new("ford", "mustang", "antique",o2,m2)
c3 = Car.new("audi", "r8", "exotic",o1,m1)
c4 = Car.new("chevy", "camaro", "antique",o1,m2)
c5 = Car.new("ford", "mustang", "antique",o2,m2)
c6 = Car.new("audi", "r8", "exotic",o2,m1)

# m1 = Mechanic.new("Jimmy", "exotic")
# m2 = Mechanic.new("Jerry","antique")

binding.pry


