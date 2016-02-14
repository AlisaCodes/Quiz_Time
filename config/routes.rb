Rails.application.routes.draw do
  root to: "surveys#index"

  resources :surveys do
    resources :questions
  end
  resources :questions do
    resource :choices
  end
end
