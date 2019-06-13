class Owner
  attr_reader :species
  attr_accessor :name, :pets, :fish, :dog, :cat
  
  @@all = []
  @pets = {fishes: [], cats: [], dogs: []}
  
  def initialize(species)
    @name = name 
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  
  def say_species
    "I am a #{species}."
  end 
  
  def buy_fish(fish)
    fish = Fish.new(fish)
    @pets[:fishes] << fish
  end
  
  def buy_cat(cat)
    cat = Cat.new(cat)
    @pets[:cats] << cat
  end 
  
  def buy_dog(dog)
    dog = Dog.new(dog)
    @pets[:dogs] << dog 
  end 
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end 
  
  def play_with_cats 
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end 
  
  def feed_fish 
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end 
  
  def sell_pets 
    @pets.each do |species, pets|
      pets.map do |animals|
        animals.mood = "nervous"
   end
   pets.clear
  end
end 

def list_pets 
  "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  
end 

  
end