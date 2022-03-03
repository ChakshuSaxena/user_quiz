Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'exam#index'

  get '/exam/' => "exam#index"
  get '/exam/new' => "exam#new"
  post '/exam/create_exam' => "exam#create_exam"
  get '/exam/:exam_id/question/new' => "question#new", as: :question_new
  post '/exam/:exam_id/question/create_question' => "question#create_question", as: :question_create
end
