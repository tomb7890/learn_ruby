# implementation of Timer class
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
    hours = @time / 60 / 60
    minutes = (@time / 60) % 60
    seconds = @time % 60
    format('%02d:%02d:%02d', hours, minutes, seconds)
  end
end
