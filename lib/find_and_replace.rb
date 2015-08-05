class String
  define_method(:find_and_replace) do | word, replacement |
    sentence = self

    if (sentence.include?(word))
      return sentence.gsub word, replacement
    end
  end
end
