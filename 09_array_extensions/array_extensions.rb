# class Array
class Array
  # def self.sum
  # end

  def hello
    'Hello!'
  end

  def sum
    if self.empty?
      0
    else
      array = 0
      each do |x|
        array += x
      end
      array
    end
  end

  def square
    if self.empty?
      []
    else
      array = []
      each do |x|
        array << x**2
      end
      array
    end
  end

  def square!
    if self.empty?
      []
    else
      array = square
      c = array.size
      (0...c).each { pop }
      (0...c).each do |i|
        push array[i]
      end
    end
  end
end
