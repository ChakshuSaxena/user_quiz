class QuestionController < ApplicationController
  def new; end

  def create_question
    Question.create(title: params[:title], first_option: params[:first_option], second_option: params[:second_option], third_option: params[:third_option], fourth_option: params[:fourth_option], correct_answer: params[:correct_answer], exam_id: params[:exam_id])
    redirect_to(exam_path)
  end
end
