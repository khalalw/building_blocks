# Project 3: Substrings
# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

def substrings(strings, dict)
  substr_hash = {}

  words_arr = strings.split(' ')
  words_arr.each do |word|
    dict.each do |substr|
      next unless word.include? substr

      substr_hash[substr] = if substr_hash.key?(substr)
                              substr_hash[substr] + 1
                            else
                              1
                            end
    end
  end
  substr_hash
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings('below', dictionary)
