class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def index
    @questions = Question.order(created_at: :desc).all
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.create(question_params)
    if @question.save
      flash[:notice] = "Question posted successfully."
      redirect_to question_path(@question)
    else
      render new_question_path
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :description)
  end
end
