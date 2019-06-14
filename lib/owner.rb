require 'pry'

class Owner
  
  attr_accessor  :pets, :name
  attr_reader :species
  
  @@all = []
  
  
  def initialize (species)
    @species =species
    @pets = {fishes:[], cats:[], dogs:[]}
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def self.count
    self.all.size
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def species
    species = "human"
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def name=(name)
    @name = name
  end
  
  def buy_fish(fish)
    f1 = Fish.new(fish)
    @pets[:fishes] << f1
  end
  
  def buy_cat(cat)
    c1 = Cat.new(cat)
    @pets[:cats] << c1
  end
  
  def buy_dog(dog)
    d1 = Dog.new(dog)
    @pets[:dogs] << d1
  end
  
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
   @pets.each do |types, pets|
     pets.each do |pet|
       pet.mood = "nervous"
      end
    end
    @pets.clear
  end
  
  def list_pets
   #binding.pry
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
  
end