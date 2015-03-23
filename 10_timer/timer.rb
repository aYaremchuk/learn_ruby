class Timer
  attr_accessor :seconds

  def seconds
    @seconds = 0
  end

  def time_string
    seconds = @seconds % 60
    minutes = (@seconds % 3600) / 60
    hours = @seconds / 3600
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(number)
    number < 10 ?  result = "0#{number}" : number.to_s
  end

end