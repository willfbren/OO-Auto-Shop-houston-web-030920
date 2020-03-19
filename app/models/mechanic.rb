class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|mechanic| mechanic.mechanic == self}
  end

  def car_owners
    cars.map {|owner| owner.cars}
  end
end
