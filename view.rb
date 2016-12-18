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

  def outcome(score, num_questions)
    "You correctly answered #{score} of #{num_questions} cards."
  end
  # Outcome should receive two arguments from control
end
