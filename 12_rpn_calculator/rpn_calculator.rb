class RPNCalculator
  def initialize
    @result = []
  end

  def push(number)
    @result.push(number)
  end

  def pop
    raise "calculator is empty" unless !@result.empty?
    @result.pop
  end

  def plus
    sum = pop + pop
    @result.push(sum)
  end

  def minus
    sub = pop - pop
    @result.push(sub)
  end

  def divide
    div = pop.to_f / pop.to_f
    @result.push(div)
  end

  def times
    mult =  pop * pop
    @result.push(mult)
  end

  def value
    @result.last
  end

  def tokens(string)
    result = string.split
    signs = %w[* + - /]
    result.collect{|x| signs.include?(x) ?  x.to_sym : x.to_i }
  end

  def evaluate(string)
    result = tokens(string)
    result.each do |value|
      case value
        when :+
          plus
        when :-
          minus
        when :*
          times
        when :/
          divide
        else
          push(value)
      end
    end
    return @result.last.to_f
  end

end