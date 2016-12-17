class View
  def question(card)
    "#{card.question}"
  end

  def get_guess
    STDIN.gets.chomp
  end

  def correct
    "Correct!"
  end

  def wrong
    "Wrong!"
  end

  def correct_answer(card)
    "The correct answer is: #{card.answer}\n\n"
  end

  def outcome(score)
    "You correctly answered #{score[0]} of #{score[1]} cards."
  end
  # Outcome should receive two arguments from control
end
