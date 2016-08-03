class WordsWithFriends
	attr_reader :guess_count
	attr_reader :game_ended
	attr_reader :word
	attr_reader :word_hint
	attr_reader :guess_array

	def initialize
		@word = []
		@word_hint = []
		@guess_array = []
		@guess_count = 0
		@game_ended = false
	end

	def add_word(new_word)
		word_chars = new_word.split("")
		@guess_count = word_chars.length
		word_chars.each do |char|
			@word_hint << "_"
			@word << char
		end
	end

	def guess_word(word)

		if !@guess_array.include? word
			p @guess_count -= 1
		else
			puts "Reused input."
		end

		if @guess_count == 0
		  	@game_ended = true
		else
			false
		end

		@guess_array << word
		guessed_word = word.split("")
		index = 0
		@word.each do |i|
			if guessed_word.index(i)
				@word_hint[index].replace(i)
			else
				@word_hint[index].replace("_")
			end
			index += 1
		end
		p @word_hint.join(" ")
	end
end

#DRIVER-comment out to run tests.

game = WordsWithFriends.new
puts "Make up a word for player two to guess: "
gamer_1 = gets.chomp
game.add_word(gamer_1)

while !game.game_ended
	gamer_2 = gets.chomp
	puts "Gamer two, guess the word: "
	game.guess_word(gamer_2)
	puts "Remainding tries: #{game.guess_count}"

	if game.word == game.word_hint
		puts "Congrats, you got it right!"
		break
	elsif game.game_ended
		puts "Boo! You lose!"
	end
end