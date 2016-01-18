class Temperature
  def initialize(temperatures)
    @fahrenheit = temperatures[:f]
    @celsius = temperatures[:c]
  end

  def to_celsius
    @celsius? @celsius : (@fahrenheit - 32) * 5 / 9
  end

  def to_fahrenheit
    @fahrenheit ? @fahrenheit : (@celsius * 9 / 5) + 32
  end

  def self.in_fahrenheit(temperature)
    Temperature.new(:f => temperature)
  end

  def self.in_celsius(temperature)
    Temperature.new(:c => temperature)
  end

end

class Celsius < Temperature
  def initialize(temperature)
    @celsius = temperature
  end
end

class Fahrenheit < Temperature
  def initialize(temperature)
    @fahrenheit = temperature
  end
end
