class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

end

class Superhero < Person
  def initialize(name, age, superpower)
    super(name, age)
    @superpower = superpower
  end

  def superpower
    @superpower
  end

end

trent = Person.new("Trent", 26)
nandini = Superhero.new("nandini", 20, "coding")

Person.all.each do |test|
  puts "Hi #{test.name}, how does it feel being #{test.age}"
end

puts "Is nandini a super hero?"
puts "Yes! Her superpower is #{nandini.superpower}" if nandini.is_a?(Superhero)
