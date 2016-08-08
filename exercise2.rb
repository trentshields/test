# Codebar Exercises
# Exercise 2: Tutorials
# By William Dunlop


class Tutorial
  def initialize(name, type, difficulty)
    @name = name
    @type = type
    @difficulty = difficulty
  end

  def name
    @name
  end
  def type
    @type
  end
  def difficulty
    @difficulty
  end

  def is_harder_than?(tutorial)
    if type == tutorial.type
      difhash = {:easy => 1, :medium => 2, :hard => 3, :advanced => 4, :expert => 5}
      puts difhash[difficulty] > difhash[tutorial.difficulty]
    elsif type != tutorial.type
      typhash = {:ruby => 1, :javascript => 2}
        if typhash[type] > typhash[tutorial.type]
          puts "You cannot compare a JavaScript with a Ruby tutorial"
        elsif typhash[type] < typhash[tutorial.type]
          puts "You cannot compare a Ruby with a JavaScript tutorial"
        end
    end
  end
end

ruby1 = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
javascript1 = Tutorial.new("Introduction to JavaScript", :javascript, :easy)
javascript2 = Tutorial.new("HTTP Requests, AJAX and APIs", :javascript, :medium)

ruby1.is_harder_than?(javascript1)
 #You cannot compare a Ruby with a JavaScript tutorial

javascript1.is_harder_than?(ruby1)
 #You cannot compare a JavaScript with a Ruby tutorial

javascript1.is_harder_than?(javascript2)
# false

javascript2.is_harder_than?(javascript1)
# true
