class Temperature

  def initialize(params = {})
    @params = params
   end

  def in_fahrenheit
    @params[:f] != nil ? @params[:f] : ctof(@params[:c])
  end

  def in_celsius
    @params[:f] != nil ? ftoc(@params[:f]) : @params[:c]
  end

  def self.from_celsius(value)
    new(:c => value)
  end

  def self.from_fahrenheit(value)
    new(:f => value)
  end

  def ftoc(fahrenheit)
    celsius = 5.0 * (fahrenheit - 32) / 9.0
  end

  def ctof(celsius)
    fahrenheit = 9.0 * celsius / 5.0 + 32
  end
end

class Celsius < Temperature
  def initialize(value, params = {})
    @params = params
    @params[:c] = value
  end

  def in_fahrenheit
    super
  end

  def in_celsius
    super
  end
end

class Fahrenheit < Temperature
  def initialize(value, params = {})
    @params = params
    @params[:f] = value
  end

  def in_fahrenheit
    super
  end

  def in_celsius
    super
  end
end