require_relative 'deck'

class Game
  attr_reader :score, :num_questions

  def initialize(deck)
    @deck = deck
    @score = 0
    @num_questions = deck.cards.length
  end

  def increase_score
    @score += 1
  end
end

