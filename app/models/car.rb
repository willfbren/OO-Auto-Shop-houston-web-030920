class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map {|car| car.classification}.uniq
  end

  def mechanics
    Mechanic.all.select {|mech| mech.specialty == self.classification}
  end
end
