require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

will = CarOwner.new("Will")
chris = CarOwner.new("Chris")
erin = CarOwner.new("Erin")

bob = Mechanic.new("Bob", "Import")
mike = Mechanic.new("Mike", "Domestic")
tim = Mechanic.new("Tim", "Import")
dave = Mechanic.new("Dave", "Supercar")

bmw = Car.new("BMW", "M5", "Import", will, bob)
ford = Car.new("Ford", "F-150", "Domestic", chris, mike)
audi = Car.new("Audi", "S5", "Import", erin, tim)
ferrari = Car.new("Ferrari", "Spider", "Supercar", will, bob)
binding.pry
