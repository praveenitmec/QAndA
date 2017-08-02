class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    redirect_to question_path(@question)
  end

  def destroy
  	@answer = Answer.find(params[:id])
  	@answer.destroy
  	render json:{status:"OK"}
  rescue Exception => e
    puts e
  	render json:{status:"FAILS"}
  end

  private
    def answer_params
      params.require(:answer).permit(:answerer, :body).merge(user_id: current_user.id)
    end
end
