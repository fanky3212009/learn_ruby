def translate(words)
  words_array = words.split()
  words_array.each_index do |index|
    word = words_array[index]
    rest = 0
    while !("aeiou".include? word[rest])
      rest += 1
      if word[rest - 1..rest].downcase == "qu"
        rest += 1
      end
    end
    punc = ""
    if word[/\p{P}/] != nil
      punc = -1
    end
    if word.capitalize == word
      word.downcase!
      words_array[index] = "#{word[rest..word.length - 1 + punc.to_i].capitalize}#{word[0, rest]}ay#{word[punc]}"
    else
      words_array[index] = "#{word[rest..word.length - 1 + punc.to_i]}#{word[0, rest]}ay#{word[punc]}"
    end
  end
  words_array.join(" ")
end
