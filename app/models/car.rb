class Car

  attr_reader :make, :model
  attr_accessor :classification, :owner, :mechanic, :Car

  @@all = []
  def initialize(make, model,classification,owner,mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic

    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.classification    
    self.all.collect{|c|c.classification}
  end

  def self.find_mechanics(classification)
    Mechanic.all.select{|c|c.specialty == classification}
  end
end
