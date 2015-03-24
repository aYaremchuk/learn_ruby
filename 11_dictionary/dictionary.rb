class Dictionary

  def initialize
    @hash = {}
  end

  def entries
    @hash
  end

  def add(hash)
    if hash.class == Hash
      hash.each {|key, value| @hash[key] = value}
    else
      @hash[hash] = nil
    end
  end

  def keywords
    @hash.keys.sort
  end

  def include?(key)
    @hash.has_key?(key)
  end

  def find(find)
    result = @hash.select { |key| key.include? find }
    Hash[*result.sort.flatten]
  end

  def printable
    @hash = Hash[*@hash.sort.flatten]
    result = ""
    @hash.each {|key, value| result += "[#{key}] \"#{value}\"\n"}
    result[0..result.length - 2]
  end
end