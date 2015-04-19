require_relative("../01_temperature/temperature.rb")

class Temperature
  def initialize(hash)
    @hash = hash
    if hash.key?(:c)
      f = ctof(hash[:c])
      c = hash[:c]
    end
    if hash.key?(:f)
      c = ftoc(hash[:f])
      f = hash[:f]
    end
    @hash = { f: f, c: c }
  end

  public

  def to_fahrenheit
    @hash[:f]
  end

  def to_celsius
    @hash[:c]
  end

  def self.in_celsius(d)
    Celsius.new(d)
  end

  def self.in_fahrenheit(d)
    Fahrenheit.new(d)
  end
end

class Celsius < Temperature
  def initialize(x)
    super({ c: x })
  end
end

class Fahrenheit < Temperature
  def initialize(x)
    super({ f: x })
  end
end
