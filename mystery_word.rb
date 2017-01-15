


word_source = File.readlines('/usr/share/dict/words')

words = word_source.map { |word| word.chomp.downcase }
#
def create_word_lists(words, min_number_letters, max_number_letters)
  list = []
  words.each do |word|
    if (min_number_letters..max_number_letters).include?(word.length)
      list << word
    end
  end
  list
end


def find_guess_location(target_word, guess)
   (0 ... target_word.length).find_all { |i| target_word[i,1] == guess }
 end
 #
 # def find_guess_location(target_word, guess)
 #    (0 ... target_word.length).find_all { |i| target_word[i,1] == guess }
 #  end


#
# # Bryce's code to create list of 4-6 words
# # def create_word_groups(words)
# #   words.select do |word|
# #     word.length == 4 or word.length == 5 or word.length == 6
# #   end
# # end


#############def main()

puts "Welcome to hangman.  Would you like to play an easy, normal or hard game?"
level_of_play = gets.chomp.downcase


if level_of_play == "easy"
  min_number_letters = 4
  max_number_letters = 6
elsif level_of_play == "normal"
  min_number_letters = 6
  max_number_letters = 8
else
  min_number_letters = 8
  max_number_letters = 40
end

puts "minimum = #{min_number_letters}"
puts "maximum = #{max_number_letters}"

list_to_pick_from = create_word_lists(words, min_number_letters, max_number_letters)

target_word = list_to_pick_from.sample
puts target_word

guesses_left = 8
length_target_word = target_word.length
puts "The length of your word is #{length_target_word} letters, and you start with #{guesses_left} guesses."

#while guesses_left > 0

  puts "Guess a letter:"
  guess = gets.chomp

  previous_guesses = []
  previous_guesses = previous_guesses << guess

  if target_word.include?(guess)
    puts "Nice guess"
  elsif
    puts "bad guess"

  end

  index_of_guesses = find_guess_location(target_word, guess)
  puts index_of_guesses

#end

#puts "you lose."

##########main if_FILE_==$mystery_word
