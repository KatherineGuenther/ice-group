require_relative '../game_controller'

describe GameController do
let (:game_controller) {GameController.new }

# (Game.new(Deck.new([['Q1','A1'],['Q2', 'A2']])))}

  # it 'has a readable score' do
  #   expect(game.score).to eq 0
  # end

  describe '#play_card' do

    let(:card){ Card.new(['question', 'answerXXX']) }
    let(:view){ double("view") }
    let(:game){ double("game") }

    it 'increases game score with correct answer' do
      allow(view).to receive(:question).with(card)
      allow(view).to receive(:correct)
      allow(view).to receive(:get_guess) { 'answerXXX' }
      expect(game).to receive(:increase_score).once
      game_controller.play_card(card, view, game)
    end

    it 'does not increase game score with incorrect answer' do
      allow(view).to receive(:question).with(card)
      allow(view).to receive(:get_guess) { 'incorrect' }
      allow(view).to receive(:wrong)
      allow(view).to receive(:correct_answer).with(card)
      expect(game).not_to receive(:increase_score)
      game_controller.play_card(card, view, game)
    end

  end

  describe '#play_deck' do

    it ''

  end

  describe '#play_deck' do

    it ''

  end

end
