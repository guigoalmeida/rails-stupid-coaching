class ApplicationController < ActionController::Base
  def ask; end

  def answer
    @user_input = params[:question]

    @coach_answer = if @user_input == 'i am going to work'
                      'Great!'
                    elsif @user_input.end_with?('?')
                      'Silly question, get dressed and go to work!'
                    else
                      " I don't care, get dressed and go to work!"
                    end
  end
end
