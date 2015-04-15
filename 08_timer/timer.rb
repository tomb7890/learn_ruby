class Timer
  def initialize
    @time = 0
  end

  def seconds
    @time
  end

  def seconds=(t)
      @time = t
  end

  def time_string
    hours = @time/60/60
    minutes = (@time/60) % 60
    seconds = @time % 60
    "%02d" % hours + ":%02d" % minutes + ":%02d" % seconds
  end
end
