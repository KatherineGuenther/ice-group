class Card
  attr_reader :question, :answer

  def initialize(card_array)
     @question = card_array[0]
     @answer =  card_array[1]
  end

end
