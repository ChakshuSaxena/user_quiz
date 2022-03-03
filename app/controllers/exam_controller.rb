class ExamController < ApplicationController
  def index
    @exams = Exam.all
  end

  def new
  end

  def create_exam
    Exam.create(title: params[:title])
    redirect_to(exam_path)
  end
end
