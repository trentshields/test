class ProgressBar
  def initialize(title = "Progress", total = 100, increment = 1, progress = 0)
    @title = title
    @total = total
    @increment = increment
    @progress = progress
  end

  def title
    @title
  end

  def total
    @total
  end

  def progressbar
    puts "#{@progress}"
  end

  def outputProgress
    puts "#{@title} (#{@progress}/#{@total})"
    puts "\n"
  end

  def increment(cls = "")
    @progress = @progress + @increment
    outputProgress()
    system clear if cls == "clear"
  end

end
