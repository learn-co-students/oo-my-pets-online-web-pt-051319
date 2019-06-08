class Cat
  attr_reader :name
  attr_accessor :mood

  
  # def name=(name)
  #   @name = "name"
  # end
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end