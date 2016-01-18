def translate(words)
  words_array = words.split()
  words_array.each do |word|
  rest = 0
    while !("aeiou".include? word[rest])
      rest += 1
      if word[rest - 1..rest] == "qu"
        rest += 1
      end
    end
    word = "#{word[rest, word.length]}#{word[0, rest]}ay"
  end
  words_array.join(" ")
end
