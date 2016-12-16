require_relative 'game'
require_relative 'file_io'
# STEP 1
# User enters a file name to begin the game
filename = ARGV[0]

cards = read_text_file(filename)
deck = Deck.new(cards)
view = View.new
game = Game.new(deck)

until deck.empty?
  current_card = deck.get_card
  puts View.question(current_card)
  guess = View.get_guess
    if guess == current_card.answer
      puts View.correct
      game.increase_score
    else
      puts View.wrong
    end
    puts View.outcome(game.score)
end
# STEP 2
  # Until the deck is empty, game presents front of card
    # User enters guess
    # Game tells user whether their guess was correct

# STEP 3
  # Game ends, prints the number of correct guesses that the user made
