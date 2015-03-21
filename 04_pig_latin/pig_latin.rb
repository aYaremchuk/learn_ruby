def translate(phrase)
  result = []
  phrase_arr = phrase.split(' ')
  phrase_arr.each do |x|
    word = x
    if  punkt = has_punctuation(word)
      word = word[0..word.length - 2]
    end
    n = 0
    several_con = ""
    until is_vowel(word[n]) do
      several_con += word[n]
      if word[n].downcase == "q"
        if word[n + 1].downcase == "u"
          several_con += word[n + 1]
        end
      end
      n += 1
    end
    if !punkt.nil?
    is_capitalize(word) ? result << (word[several_con.length..word.length] += several_con  += "ay#{punkt}").capitalize : result << (word[several_con.length..word.length] += several_con  += "ay#{punkt}")
    else
      is_capitalize(word) ? result << (word[several_con.length..word.length] += several_con  += "ay").capitalize : result << (word[several_con.length..word.length] += several_con  += "ay")
    end
  end
  result.join(" ")
end

def is_vowel(x)
  vowel = %w[a e i o u y]
  result = vowel.include?(x.downcase)
end

def is_capitalize(word)
  /[[:upper:]]/.match(word[0])
end

def has_punctuation(word)
  /[, \.;:!]+/.match(word[word.length - 1])
end