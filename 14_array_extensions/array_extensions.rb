class Array

  def sum
    self.any? ? self.reduce(:+) : 0
  end

  def square
    self.collect{|value| value**2}
  end

  def square!
    self.collect!{|value| value**2}
  end

end