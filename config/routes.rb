Rails.application.routes.draw do
  resources :surveys do
    resources :quizzes
  end
end
