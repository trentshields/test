class Person
  def initialize(age, gender, name)

    @name = name
    @age = age
    @gender = gender

  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def name
    @name
  end

end

class Superhero < Person

  def initialize(age, gender, name, superpower)

    super(age, gender, name)
    @superpower = superpower



  end

  def superpower
    @superpower
  end

end

trent = Person.new(26, "male", "trent")
nandini = Superhero.new(20, "female", "nandini", "coding")

Person.all.each do |current_value_in_the_loop|
puts "Hi #{current_value_in_the_loop.name}"
end
