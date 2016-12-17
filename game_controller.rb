require_relative 'game'
require_relative 'file_io'
require_relative 'view'

include FileLiterator

class GameController
  include FileLiterator

  def run(filename)
    cards = FileLiterator.read_text_file(filename)
    deck = Deck.new(cards)
    game = Game.new(deck)

    play_deck(deck, view, game)
    display_outcome(view, game)
  end

  def play_card(card, view, game)
    puts view.question(card)
    guess = view.get_guess
    if guess == card.answer
      puts view.correct
      game.increase_score
    else
      puts view.wrong
      puts view.correct_answer(card)
    end
  end

  def play_deck(deck, view, game)
    until deck.empty?
      play_card(deck.get_card, view, game)
    end
  end

  def display_outcome(view, game)
    puts view.outcome(game.score, game.num_questions)
  end

end
