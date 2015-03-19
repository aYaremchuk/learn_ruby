def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, numbers = 2)
  result = []
  numbers.times{result << phrase}
  result.join(" ")
end

def start_of_word (phrase, letters)
  phrase[0..letters-1]
end

def first_word (phrase)
  result = phrase.split(/\W+/)
  result[0]
end

def titleize (phrase)
  little_words = ["the", "over", "and"]
  result = []
  temp_result = phrase.split(/\W+/)
  i = 0
  temp_result.each do |x|
    if !little_words.include?(x)
      result << x.capitalize
    elsif i == 0
      result << x.capitalize
    else
      result << x
    end
    i += 1
  end
  result.join(" ")
end