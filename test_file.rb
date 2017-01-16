hangman_hash = {
  0 => 'b',
  1 => 'o',
  2 => '_',
  3 => 't'
  }


  print "\n"

  print " below is loop \n"

  length = 4
  #def display_hangman (hangman_hash, guess, length)
  times = 0
  new_array = []
  while times < 4
    print "#{hangman_hash[times]}"
    new_array << hangman_hash[times]
    times += 1
  end

  print "\n\n new_array with .to_s"
  new_array = new_array.join

  print "\n\ new array to_s"
  print new_array.to_s



  # new_array.flatten
  # new_new = new_array.to_s
  # new_new = new_new.gsub('"','')
  # puts "\n new_array"
  # print new_array
  #
  # print "\n new_new "
  # print new_new
  #
  # def sentence_maker (array)
  #   array.join(' ').capitalize << "."
  # end

test_array = ["a", "b", "c"]

# progress_test = []
#
# hangman_hash.each do |obj|
#   obj.map do |k, v|
#       {k => progress_test << v}
#   end
#   puts progress_test
# end





#hangman_hash = Hash.new( "_ " )
#
# correct_guess_index = [0, 4, 7]
# puts correct_guess_index
#
# guess = gets.chomp
# puts guess.class
# #hangman_hash[1] = guess + " "
#
# length = 8
#
# #def update_hangman_hash
# correct_guess_index.each do |x|
#   hangman_hash[x] = guess + " "
# end
#
# #def display_hangman (hangman_hash, guess, length)
# times = length - length
# while length > times
#   print "#{hangman_hash[times]}"
#   times += 1
# end

# print "#{hangman_hash[0]}"
# print "#{hangman_hash[72]}"



# my_hash = Hash.new ('_')
#
#
# puts my_hash(0)



# new_string =[]
#
# def string_from_hash |key, value|
#   new_string << value
# end
#
# new_string = string_from_hash(my_hash)
# puts new_string
