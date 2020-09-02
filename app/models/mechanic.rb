class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    self.class.all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|c| c.mechanic == self}
  end

  def car_owners
    self.cars.collect{|co|co.owner}
  end

  def car_owners_names
    self.car_owners.collect{|con|con.name}
  end
  


end
