require 'date'
require 'terminal-table'
require './progressbar.rb'
require 'paint'

# thi is a test

# Set up Date Variables

abbrDaynames = Date::ABBR_DAYNAMES
numDays = Date::ABBR_DAYNAMES.length

NEWLINE = "\n"

# Set up day class

class Day
  def initialize(name, temperature)
    @name = name
    @temperature = temperature
  end

  def name
    @name
  end

  def temperature
    @temperature
  end

  # self.all used to call all objects created with a particular class.

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

# Create a celsius class to hold the temperatures

class Celsius
  def initialize(temperature)
    @temperature = temperature
  end

  def celsius
    @temperature
  end

  def fahrenheit
    @temperature * 1.5 + 30
  end
end

def clear
  system "clear"
end

# Instantiate the ProgressBar class

progress = ProgressBar.new("Days", numDays, 1, 0)
clear()
progress.outputProgress
abbrDaynames.each do |x|
  puts "Hi, what was the temperature on #{x} in celsius?"
  var = Day.new(x, Celsius.new(gets.chomp.to_i))
  clear()
  progress.increment
end

puts NEWLINE

# Set up a variable that
days = Day.all


clear()

# Create and populate Table gem
table = Terminal::Table.new :title => "Trents Temp Chart", :headings => ['Name', 'Celsius', 'Fahrenheit'] do |t|
  days.each do |x|
    color = x.temperature.celsius > 30 ? :red : :blue
    t.add_row [x.name, Paint[x.temperature.celsius, color], Paint[x.temperature.fahrenheit, color]]
  end
end

# Output the generated table
puts table
