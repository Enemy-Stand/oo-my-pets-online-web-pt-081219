class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def cats
    Cats.map
  end
  
  def buy_cat(name)
    cat.new(name, self)
  end
  
  def buy_dog(name)
    dog.new(name, self)
  end
end