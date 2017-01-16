


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
   (0 ... target_word.length).find_all { |i| target_word[i] == guess }
 end
 #
 # def find_guess_location(target_word, guess)
 #    (0 ... target_word.length).find_all { |i| target_word[i, 1] == guess }
 #  end
 # got this method from the internet. the 1 in the above [i, 1] didn't seem like
 #it was doing anything. removed it in the above, and still works.


#
# # Bryce's code to create list of 4-6 words
# # def create_word_groups(words)
# #   words.select do |word|
# #     word.length == 4 or word.length == 5 or word.length == 6
# #   end
# # end


#############def main()
#######################
#######################
play_again = 'yes'
until play_again == "no"
  puts "Welcome to hangman.\nWould you like to play an easy, normal or hard game?"
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

  guesses = 0
  length_target_word = target_word.length
  puts "The length of your word is #{length_target_word} letters, and you start with 8 guesses."

  hangman_hash = Hash.new( "_ " )
  print "\n\n\n"

  previous_guesses = []

  #DISPLAY THE HANGMAN HASH.  Empty at start.
  #def display_hangman (hangman_hash, guess, length)
  times = 0
  while length_target_word > times
    print "#{hangman_hash[times]}"
    times += 1
  end

  while guesses < 8  #changed to 8 to allow only 8 guesses. But seems like it should be 9.


      print "\n\n\n" "Guess a letter: "
      guess = gets.chomp

      if previous_guesses.include? guess
        puts "You guessed #{guess} already.  Not wise"
      elsif target_word.include?(guess)
        puts "Nice guess"

      elsif
        puts "\n Bad guess"
      end

      previous_guesses << guess

      correct_guess_index = find_guess_location(target_word, guess)
      puts correct_guess_index

      #def update_hangman_hash
      correct_guess_index.each do |x|
        hangman_hash[x] = guess + " "
      end


      correct_guess_index = correct_guess_index.to_s
      class_correct_guess_index = correct_guess_index.class

      guesses += 1

      #DISPLAY THE HANGMAN hangman_hash
      #def display_hangman (hangman_hash, guess, length)
      print "\n\n"
      test_if_won = []
      times = length_target_word - length_target_word
      while length_target_word > times
        print "#{hangman_hash[times]}"
        test_if_won << hangman_hash[times]
        times += 1
      end

      #Convert test_if_won to string and remove quotes
      test_if_won = test_if_won.join
      test_if_won = test_if_won.delete (" ")

      if test_if_won == target_word
        puts "\n\n YOU WON!!"
        print "It took you #{guesses} guesses!\n\n"
        break
      elsif guesses == 8
        print "\n\n You LOST.  You have used your 8 guesses."
        print "\n\n The mystery_word was -- #{target_word}. \n\n"
      end
  end

puts "Play again? yes or no"
play_again = gets.chomp.to_s.downcase

end
