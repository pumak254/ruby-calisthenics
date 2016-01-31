module FunWithStrings
  def palindrome?
    self.downcase!
    self.gsub!(/[!-@]|[\[-`]|[\{-~]|\s/,'')
    return self == self.reverse
  end
  def count_words
    # your code here
    count_hash = Hash.new(0)
    words = self.split(' ')
    words.each { |word| count_hash[word] = count_hash[word] + 1 }
    return count_hash
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end