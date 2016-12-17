require_relative '../game'

describe Game do
let (:game) {Game.new(Deck.new([['Q1','A1'],['Q2', 'A2']]))}

  it 'has a readable score' do
    expect(game.score).to eq 0
  end

  it 'has a readable number of questions' do
    expect(game.num_questions).to eq 2
  end

  describe '#increase_score' do

    it 'adds a point to the score' do
      expect{game.increase_score}.to change {game.score}.by 1
    end
  end

end
