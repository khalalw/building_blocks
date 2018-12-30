# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"
# Quick Tips:

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

def caesar_cipher(str, shift)
  # break up each word the sentence into an array
  # change each letter to the number equivalent
  # add shift factor to number
  # convert number back to string

  shifted_words = []
  shifted_chars = []

  word_arr = str.split(' ')
  word_arr.each do |word|
    word.each_byte do |num|
      shifted_num = if (num + shift > 90 && num + shift < 97) || (num + shift > 122)
                      (num - 26 + shift)
                    else
                      (num + shift)
                    end
      shifted_chars.push(shifted_num.chr)
    end
    shifted_words.push(shifted_chars.join(''))
    shifted_chars = []
  end
  shifted_words.join(' ')
end
