# Your code goes here!
require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    array_count = Hash.new(0)
    word_count = Hash.new(0)
    anagrams = []

    word.each_char do |letter|
      word_count[letter] += 1
    end

    array.each do |words|
      if words.length == word.length
        words.each_char do |letters|
          array_count[letters] += 1
        end

        if word_count == array_count
          anagrams << words
        end
        array_count = Hash.new(0)
      end
    end
    return anagrams
  end
end
