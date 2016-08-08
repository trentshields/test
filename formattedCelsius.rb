require 'date'
require 'terminal-table'
require 'ruby-progressbar'



bar = ProgressBar.new


NEWLINE = "\n"

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

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

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

def newlineClear
  system "clear"
  puts NEWLINE
end

newlineClear()

progressbar = ProgressBar.create(:total => Date::ABBR_DAYNAMES.length, :title => "Days", :format => "%t |%B|")
puts progressbar
puts NEWLINE
Date::ABBR_DAYNAMES.each do |x|
  puts "Hi, what was the temperature on #{x}?"
  Day.new(x, Celsius.new(gets.chomp.to_i))
  clear()
  progressbar.increment
  puts progressbar
  puts NEWLINE
end

puts NEWLINE

days = Day.all


newlineClear()

table = Terminal::Table.new :title => "Trents Temp Chart", :headings => ['Name', 'Celsius', 'Fahrenheit'] do |t|
  days.each do |x|
    t.add_row [x.name, x.temperature.celsius, x.temperature.fahrenheit]
  end
end

puts table
