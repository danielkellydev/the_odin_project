def substrings(word, dictionary)
  hash = {}
  dictionary.each do |sub_string|
    sub_string_count = word.downcase.scan(sub_string).count
    if sub_string_count > 0
      hash[sub_string] = sub_string_count
    else
      next
    end
  end
  hash
end





puts(substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]))