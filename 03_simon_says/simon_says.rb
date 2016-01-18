def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num = 2)
  ("#{echo(word)} " * num).strip
end

def start_of_word(word, num)
  word[0..num - 1]
end

def first_word(words)
  words.split()[0]
end

def titleize(words)
  words_array = words.split()
  words_array.each do |word|
    if word == words_array[0] || (word != "and" && word != "over" && word != "the")
      word.capitalize!
    end
  end.join(" ")
end
