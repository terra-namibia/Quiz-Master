class QuizzesController < ApplicationController
  def index
    @quizzez = Quiz.all.order(created_at: :asc)
  end

  def show
    @quiz = Quiz.find_by(id: params[:id])
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new(
      content: params[:content],
      answer: params[:answer]
    )
    if @quiz.save
      flash[:notice] = "クイズを作成しました"
      redirect_to("/quizzes/index")
    else
      render("quizzes/new")
    end
  end

  def edit
    @quiz = Quiz.find_by(id: params[:id])
  end
  
  def update
    @quiz = Quiz.find_by(id: params[:id])
    @quiz.content = params[:content]
    @quiz.answer = params[:answer]
    if @quiz.save
      flash[:notice] = "クイズを編集しました"
      redirect_to("/quizzes/index")
    else
      render("quizzes/edit")
    end
  end
  
  def destroy
    @quiz = Quiz.find_by(id: params[:id])
    @quiz.destroy
    flash[:notice] = "クイズを削除しました"
    redirect_to("/quizzes/index")
  end

end
