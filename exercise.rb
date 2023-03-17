class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    sentence = str.split(" ")
    result = []
    sentence.each do |word|
      if word.length > 4
        # set punctuation if at end of word, otherwise set to nothing
        punctuation = ''
        if ['.',',','?','!'].include? word[-1]
          punctuation = word[-1]
        end
        # replace with marklar following capitalization, appending any punctuation
        if word == word.capitalize
          result.append("Marklar" + punctuation)
        else
          result.append("marklar" + punctuation)
        end
      else
        result.append(word)
      end
    end
    result.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    sum = 0
    first = 0
    second = 1
    (nth - 1).times do
      first, second = second, first + second
      # if number is even, add it to the sum
      if second.even?
        sum = sum + second
      end
    end
    sum
  end

end
