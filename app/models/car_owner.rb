class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    cars.map {|cars| cars.mechanic}
  end

  def self.cars_owned
    Car.all.length.to_f / all.length.to_f
  end
end
