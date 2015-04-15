class Array
  def hello
    return "Hello!"
  end

  def sum
    if self.empty?
      0
    else
      -1
    end
  end

  def square
    if self.empty?
      []
    else
      self.each {|x| x = x ** 2 }
    end
  end
end
