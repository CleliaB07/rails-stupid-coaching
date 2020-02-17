class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    # params is a hash provided by Rails which captures user input from 2 sources:
    # 1. a get request url --> ?key=value
    # 1. a post request from the inputs of the form
    if @question == 'I am going to work'
      @answer = 'great'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!.'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
