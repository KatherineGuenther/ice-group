require_relative '../card'

describe Card do
let(:card) {Card.new(['What is love?', 'Scones'])}

  it 'has readable question string' do
    expect(card.question).to eq('What is love?')
  end

  it 'has readable answer string' do
    expect(card.answer).to eq('Scones')
  end


end
