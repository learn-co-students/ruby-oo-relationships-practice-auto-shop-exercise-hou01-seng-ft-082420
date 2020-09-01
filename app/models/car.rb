class Car

  attr_accessor :owner
  attr_reader :make, :model, :classification

  @@all = []

  def initialize(make, model, classification, owner = nil)
    @make = make
    @model = model
    @classification = classification
    @owner = owner

    self.class.all << self
  end

  def self.all
    @@all
  end 
  
  def self.classifications
    (self.all.collect{|cars| cars.classification}).uniq
  end 

  def self.find_mechanics(classification)
    Mechanic.all.select{|mechanics| mechanics.specialty == classification}
  end 

end
