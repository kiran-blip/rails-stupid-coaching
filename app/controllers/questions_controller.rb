class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]

    if @question == "I am going to work"
      @coach_reply = "Great!"
    elsif @question.include?("?")
      @coach_reply = "Silly question, get dressed and go to work!"
    else
      @coach_reply = "I don't care, get dressed and go to work!"
    end
  end
end
