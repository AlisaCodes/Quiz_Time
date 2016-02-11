Rails.application.routes.draw do
  resources :surveys do
    resources :questions
  end
  resources :questions do
    resource :choices
  end
end
