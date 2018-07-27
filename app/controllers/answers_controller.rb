class AnswersController < ApplicationController
  def answer
    count = Quiz.all.count
    if count > 3
      @quizzes = Quiz.all.sample(3)
    else
      @quizzes = Quiz.all
    end      
  end
end
