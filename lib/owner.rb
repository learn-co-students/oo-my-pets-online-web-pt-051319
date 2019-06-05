require 'pry'

class Owner

	# attr_accessor
	attr_reader :name, :species, :pets

	@@all =[]

	def initialize(name)
		# @name = name
		@@all << self
		@species = "human"
		@pets = {:fishes => [], :dogs => [], :cats => []}
	end

	def self.all
		@@all
	end

	def self.count
		@@all.length
	end

	def self.reset_all
		@@all = []
	end

	def say_species
		"I am a human."
	end

	def name=(name)
		@name = name
	end

	def buy_fish(swimmy_splashy_friend)
		new_fish = Fish.new(swimmy_splashy_friend)
		@pets[:fishes] << new_fish
	end

	def buy_cat(kitto_kitty_catto)
		new_cat = Cat.new(kitto_kitty_catto)
		@pets[:cats] << new_cat
	end

	def buy_dog(doggo_good_boi)
		new_dog = Dog.new(doggo_good_boi)
		@pets[:dogs] << new_dog
	end

	def walk_dogs
		pets[:dogs].each{ |dog| dog.mood = 'happy'}
	end

	def play_with_cats
		pets[:cats].each{ |cat| cat.mood = 'happy'}
	end

	def feed_fish
		pets[:fishes].each{ |fish| fish.mood = 'happy'}
	end

	def sell_pets
		@pets = {:fishes => [], :dogs => [], :cats => []}
	end

	def pets=(pets)
		pets.values.flatten.each{ |pet| pet.mood = 'nervous'}
	end

	def list_pets
		"I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
	end
end