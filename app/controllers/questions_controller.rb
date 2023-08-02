class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(params[:question])
  end

  private

  def coach_answer(your_message)
    if your_message.include?("work") == true
      return "Great!"
    elsif your_message.include?("?") == true
      return "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

end
