# STEP 1
# User enters a file name to begin the game
filename = ARGV[0]

cards = read_text_file(filename)
deck = Deck.new(cards)
view = View.new

until deck.empty?
  current_card = deck.get_card
  puts view.question(current_card)
  guess = view.get_guess
    if guess == current_card.answer
      puts view.correct
      game.increase_score
    else
      puts view.wrong
    end
    puts view.outcome(game.score)
end
# STEP 2
  # Until the deck is empty, game presents front of card
    # User enters guess
    # Game tells user whether their guess was correct

# STEP 3
  # Game ends, prints the number of correct guesses that the user made
