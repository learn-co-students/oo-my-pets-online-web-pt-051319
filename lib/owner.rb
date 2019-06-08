require 'pry'
class Owner
  # code goes here
  attr_accessor :pets, :name, :fishes, :cats, :dogs
  attr_reader :species
  
  @@all = []
  
    
  
  
  def initialize(species)
    @name = name
    @species = species
    @pets = {
      :fishes => [],
      :cats => [],
      :dogs => []
    }
    @@all << self
    
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def pets
    @pets 
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end
  
  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
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
    @pets.each do |species, list|
      list.each do |pet|
        pet.mood = "nervous"
        #binding.pry
      end
      #binding.pry
      list.clear
    end
   
  end
  
  def list_pets
    #"I have 2 fish, 3 dog(s), and 1 cat(s)."
    fish_count = @pets[:fishes].size
    dog_count = @pets[:dogs].size
    cat_count = @pets[:cats].size
    
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."

  end

end