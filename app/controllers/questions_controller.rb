class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @coach_answer = ''

    # case @question
    # when 'I am going to work' then @coach_answer = 'Great!'
    # when @question.end_with?('?') then @coach_answer = 'Silly question, get dressed and go to work!'
    # else @coach_answer = 'I don\'t care, get dressed and go to work!'
    # end

    @coach_answer = if @question == 'I am going to work'
                      'Great!'
                    elsif @question.end_with?('?')
                      'Silly question, get dressed and go to work!'
                    else
                      'I don\'t care, get dressed and go to work!'
                    end
  end
end
