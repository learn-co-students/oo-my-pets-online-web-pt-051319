require 'pry'
class Owner
  attr_accessor :name, :pets  
  attr_reader :species
  @@all = []
  @@count = 0
  
  def initialize(species)
    @species = species
    @@all << self 
    @@count += 1
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end 

  def self.all 
    @@all
  end
  
  def self.count
    @@count
  end 
  
  def self.reset_all
    @@count = 0
  end 
  
  def say_species
    "I am a #{self.species}."
  end 
  
  def buy_fish(new_fish)
   new_fish = Fish.new(new_fish)
   @pets[:fishes] << new_fish       
  end 
  
  def buy_cat(new_cat)
   new_cat = Cat.new(new_cat)
   @pets[:cats] << new_cat       
  end 
  
  def buy_dog(new_dog)
   new_dog = Dog.new(new_dog)
   @pets[:dogs] << new_dog       
  end 
  
  def walk_dogs
    @pets[:dogs].collect {|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats
    @pets[:cats].collect {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood = "happy"}
  end 
  
  def sell_pets
   @pets.each do |key, object| 
     object.collect do |attribute|
     attribute.mood = "nervous"
    end
   end 
   @pets.clear
  end 
  
  def list_pets
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end 
  
end