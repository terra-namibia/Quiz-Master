Rails.application.routes.draw do

  get root "answers#answer"

  get "quizzes/index" => "quizzes#index"
  get "quizzes/new" => "quizzes#new"
  get "quizzes/:id" => "quizzes#show"
  post "quizzes/create" => "quizzes#create"
  get "quizzes/:id/edit" => "quizzes#edit"
  post "quizzes/:id/update" => "quizzes#update"
  post "quizzes/:id/destroy" => "quizzes#destroy"

  get "answer" => "answers#answer"
  get "answer_json" => "answers#answer_json", defaults: { format: "json" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
