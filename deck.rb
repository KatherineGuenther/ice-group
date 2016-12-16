require_relative 'card'

class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards.map { |card| Card.new(card) }
  end

  def empty?
    @cards.empty?
  end

  def get_card
    @cards.shift
  end


end
