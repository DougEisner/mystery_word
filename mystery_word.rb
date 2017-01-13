word_source = File.readlines('/usr/share/dict/words')

words = word_source.map { |word| word.chomp.downcase }

def create_word_groups(words)
  list = []
  words.each do |word|
    if word.length == 4 or word.length == 5 or word.length == 6
      list << word
    end
  end
  list
end

def select_random_word(word_list)
  word_list.sample
end

# Bryce's code to create list of 4-6 words
# def create_word_groups(words)
#   words.select do |word|
#     word.length == 4 or word.length == 5 or word.length == 6
#   end
# end

word_list = create_word_groups(words)

#p word_list
p word_list.count

random_word = select_random_word(word_list)
puts "random word: " + random_word

puts "The length of your word is #{random_word.length}"
