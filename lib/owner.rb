class Owner
  attr_accessor :pets, :name
  attr_reader :species 
  @@all = []
  @@count = 0 
  
  def initialize(species)
    @species = species 
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
    @@count += 1 
  end 

  def self.count 
    @@count
  end 
  
  def self.reset_all
    @@count = 0 
    @@count
  end 
  
  def say_species 
   return "I am a #{@species}." 
  end 
  
  def pets 
    @pets 
  end 
  
  def self.all 
    @@all 
  end 
  
  def buy_cat(name) 
   name = Cat.new(name)
   name.owner = self
   @pets[:cats].push(name)
  end 
  
  def buy_dog(name) 
   name = Dog.new(name)
   name.owner = self
   @pets[:dogs].push(name)
  end 
  
  def buy_fish(name)
   name = Fish.new(name)
   name.owner = self
    @pets[:fishes].push(name)
  end 
  
  def walk_dogs 
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end 
  
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end 
  
  def feed_fish
     self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end 
  
  def sell_pets
    @pets.each do |species, pet|
      pet.each do |name|
        name.mood = "nervous"
      end 
    end 
    @pets = {}
  end 
  
  def list_pets 
    
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end 
  
end