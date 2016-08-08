class Celsius
  def initialize(temperature)

    @temperature = temperature

  end

  def convert_temperature

    @Fahrenheit = @temperature*1.8 + 32
    @Fahrenheit.round.to_s + " degree F" #add pre-existing methods. Round off
    #number, convert to string in order to concatenate "degree F"

  end

end

class Day

  # def initialize(name)
  #   @names = ["Monday", "Tuesday", "Wednesday", "Thursday"]
  #   puts "What was the temperature on " + Day.name.each
  # end

names = ["monday", "tuesday", "wednesday", "thursday"]
names.map! {|name| name.capitalize }
names.each {puts "What was the temperature on " + name}
end

# puts "What was the temperature on Monday?"
# Monday = gets.chomp.to_i
# puts "What was the temperature on Tuesday?"
# Tuesday = gets.chomp.to_i
# puts "What was the temperature on Wednesday?"
# Wednesday = gets.chomp.to_i
# puts "What was the temperature on Thursday?"
# Thursday = gets.chomp.to_i

temp1=Celsius.new(Monday)
temp2=Celsius.new(Tuesday)
temp3=Celsius.new(Wednesday)
temp4=Celsius.new(Thursday)

puts "These are those temperatures in Fahrenheit"
Week =[temp1,temp2,temp3,temp4] #create an array

Week.each do |day| #looping through the array, 'day' is a reference to each value
  #in the array
  puts day.convert_temperature
end




# puts "What was the temperature on Friday?"
# Friday = gets.chomp.to_i
# puts "What was the temperature on Saturday?"
# Saturday = gets.chomp.to_i
# puts "What was the temperature on Sunday?"
# Sunday = gets.chomp.to_i


# temp1 = Celsius.new(Monday)
#
# puts temp1.convert_temperature
#
# temp2 = Celsius.new(Tuesday)
#
# puts temp2.convert_temperature
#
# temp3 = Celsius.new(Wednesday)
#
# puts temp3.convert_temperature
#
# temp4 = Celsius.new(Thursday)
#
# puts temp4.convert_temperature

# temp5 = Celsius.new(Friday)
#
# puts temp5.convert_temperature
#
# temp6 = Celsius.new(Saturday)
#
# puts temp6.convert_temperature
#
# temp7 = Celsius.new(Sunday)
#
# puts temp7.convert_temperature
