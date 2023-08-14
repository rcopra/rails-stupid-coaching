class QuestionsController < ApplicationController
  def ask
    # This view should render the form
  end

  def answer
    # Here is where the form point to
    # We should have params with the question that was asked
    question = params[:query]
    if question == 'I am going to work'
      @coach_response = 'Great!'
    elsif question.end_with?('?')
      @coach_response = 'Silly question, get dressed and go to work!'
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end
