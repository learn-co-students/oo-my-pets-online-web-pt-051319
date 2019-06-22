require 'pry'

class Owner

  attr_accessor :owner, :name, :mood, :fish, :cat, :dog, :pets
  attr_reader :species

  @@all  = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {:cats=>[], :dogs=>[], :fishes=>[] }
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def species
    @name
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.collect do |type,values|
      values.each do |attribute|
        attribute.mood = "nervous"
        end
        values.clear
      end
    end

    def list_pets
      num_fish = self.pets[:fishes].count
      num_dogs  = self.pets[:dogs].count
      num_cats  = self.pets[:cats].count
      "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
    end
  end
