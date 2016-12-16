require_relative '../deck'

describe Deck do

  let(:deck) { Deck.new([['Q1','A1'],['Q2','A2']]) }
  let(:empty_deck) { Deck.new([]) }

  it 'has cards' do
    expect(deck.cards).to all be_instance_of Card
  end

  describe "#empty?" do
    it "checks if the deck is empty" do
      expect(empty_deck.empty?).to be true
    end
    it "checks if the deck is not empty" do
      expect(deck.empty?).to be false
    end
  end


end
