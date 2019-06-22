require 'pry'

class Cat

  attr_accessor :mood, :owner, :species
  attr_reader :name

  def initialize(name, mood = "")
    @name = name
    @mood = "nervous"
  end

  def name
    @name
  end

end
