module FunWithStrings
  def palindrome?
    self.downcase!
    self.gsub!(/[!-@]|[\[-`]|[\{-~]|\s/,'') # leave letters only
    return self == self.reverse
  end
  def count_words
    count_hash = Hash.new(0) # zero count for all words
    self.gsub!(/[!-@]|[\[-`]|[\{-~]/,'') # remove punctuation
    #self.split(/\W+/)
    words = self.split(' ')
    words.each do |word| 
      word.downcase!
      count_hash[word] = count_hash[word] + 1 
    end
    return count_hash
  end
  def anagram_groups
    anagram_arrays = []
    words = self.split(" ")
    words.each do |word|
      new_anagram = true
      anagram_arrays.each do |array| # check if word belongs to current groups
        if array.first.downcase.chars.sort == word.downcase.chars.sort
          array.push(word) # word belongs to this group
          new_anagram = false
          break
        end
      end
      anagram_arrays.push([word]) if new_anagram # new group of anagrams
    end
    return anagram_arrays
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end