class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @user_input = params[:user_answer]
    @coach_response = ""

    # If the message is I am going to work, the coach will answer Great!
    if @user_input == "I am going to work"
      @coach_response = "Great!"
    elsif @user_input.include?("?")
      # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
      @coach_response = "Silly question, get dressed and go to work!"
    else
      # Otherwise the coach will answer I don't care, get dressed and go to work!
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end
