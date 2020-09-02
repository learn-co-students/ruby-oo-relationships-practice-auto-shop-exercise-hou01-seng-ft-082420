class CarOwner

  attr_reader :name
  attr_accessor :cars, :mechanic

  @@all = []
  def initialize(name)
    @name = name

    self.class.all << self
  end

  def cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    self.cars.collect{|c| c.mechanic}
  end

  def self.average_number_of_cars
    total = Car.all.count
    total / self.all.count
  end

  def self.all
    @@all
  end

end
