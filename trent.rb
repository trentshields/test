class Day
  def initialize(names, temperature)
    @names = names
    @temperature = temperature
  end

  def names
    @names
  end

  def temperature
    @temperature
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def ask_about_name

   "What was the temperature on " + @names
 end

 def convert_temperature

   @Fahrenheit = @temperature*1.8 + 32
   @Fahrenheit.round.to_s + " degree F"
 end

end



# class Input
#   def initialize(temps)
#     @temps = temps
#   end
#
#   def temps
#     @temps
#   end
# end

# temp1 = Celsius.new(Monday)
# temp2 = Celsius.new(Tuesday)
# temp3 = Celsius.new(Wednesday)
# temp4 = Celsius.new(Thursday)
# temp4 = Celsius.new(Friday)
# temp5 = Celsius.new(Saturday)
# temp6 = Celsius.new(Sunday)

names = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday",
"Sunday"]
names.each do |name|
  puts "What was the temperature on #{name} "
  print "> "
  Day.new(name, Celsius.new(gets.chomp.to_i))#the new Day is an object, which has a
  #temperature object *within* it, so that we can talk to the temperature and make
  #it do things like convert to fahrenheit
end

alldays = Day.all

alldays.each do |x|

  puts x.convert_temperature
end
