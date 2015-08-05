class String
  define_method(:find_and_replace) do | string, replacement |
    sentence = self

    if (sentence.include?(string))
      return replacement
    end
  end
end
