class Book
  attr_accessor :title

  def title=(title)
    little_words = %w[the and in of a an]
    @title = []
    temp_result = title.split(/\W+/)
    i = 0
    temp_result.each do |x|
      if !little_words.include?(x) || i == 0
        @title << x.capitalize
      else
        @title << x
      end
      i += 1
    end
    @title = @title.join(" ")
  end
  
end