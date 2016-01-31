module FunWithStrings
  def palindrome?
    self.downcase!
    self.gsub!(/[!-@]|[\[-`]|[\{-~]|\s/,'') # leave letters only
    return self == self.reverse
  end
  def count_words
    count_hash = Hash.new(0)
    self.gsub!(/[!-@]|[\[-`]|[\{-~]/,'') # remove punctuation
    words = self.split(' ')
    words.each do |word| 
      word.downcase!
      count_hash[word] = count_hash[word] + 1 
    end
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