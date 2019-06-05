require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    # why can't I use self.all here?
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def fishes
    self.pets[:fishes]
  end

  def cats
    self.pets[:cats]
  end

  def dogs
    self.pets[:dogs]
  end

  def buy_fish(name)
    Fish.new(name).tap {|f| fishes << f}
  end

  def buy_cat(name)
    Cat.new(name).tap {|c| cats << c}
  end

  def buy_dog(name)
    Dog.new(name).tap {|d| dogs << d}
  end

  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    fishes.each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end

  def list_pets
    "I have #{fishes.count} fish, #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end
