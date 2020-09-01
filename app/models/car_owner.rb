class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end 

  def cars
    Car.all.select{|cars| cars.owner == self}
  end 

  def num_cars 
    self.cars.count
  end 

  def mechanics
    v = self.cars.collect{|cars| cars.classification}
    (v.collect{|classification| Car.find_mechanics(classification)}).flatten
  end 

  def self.average_number_of_cars
    ((self.all.sum{|owners| owners.num_cars}).to_f / self.all.count).round(2)
  end 

end
