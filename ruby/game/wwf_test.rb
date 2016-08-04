#Comment out driver code in words_with_friends.rb to test.

require_relative 'words_with_friends'

describe WordsWithFriends do
let (:word) { WordsWithFriends.new}

	it "tests the guess functionality" do
		word.add_word("Mississippi")
		word.guess_word("Miss")
		word.guess_word("Misses")
		word.guess_word("Mister")
		word.guess_word("Mission")
		word.guess_word("Cat")
		word.guess_word("Mississippi")
	end
end