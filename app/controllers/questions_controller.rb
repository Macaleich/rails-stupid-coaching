class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if question == "I am going to work"
      "Great!"
    question.include?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
