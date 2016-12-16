require_relative 'deck'

class Game
  attr_reader :score

  def initialize(deck)
    @score = [0, deck.cards.length]
    @deck = deck
  end

  def increase_score
    @score[0] += 1
  end
end

