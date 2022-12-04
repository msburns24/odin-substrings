def find_substrings(string, dict)
  outputHash = {}
  dict.each do |dict_word|
    dict_word.downcase!
    outputHash[dict_word] = 0
    string.split.each do |str_word|
      str_word.downcase!
      while true
        next_index = str_word.index(dict_word)
        unless next_index
          break
        end

        outputHash[dict_word] += 1
        end_index = next_index + dict_word.length
        str_word = str_word[end_index..-1]
      end
    end
  end
  outputHash
end

# Example
string = "Howdy partner, sit down! How's it going?"
dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts find_substrings(string, dict)