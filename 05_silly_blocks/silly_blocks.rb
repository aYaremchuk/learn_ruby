def reverser
  words = yield.split(/\W+/)
  words.collect! {|word|  word.reverse }
  words.join(" ")
end

def adder(value = 1)
  yield + value
end

def repeater(number = 1)
  number.times { yield }
end