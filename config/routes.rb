Rails.application.routes.draw do
  devise_for :users
  get "welcome/index"
  get "picture/index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pictures do
    resources :comments
  end
  resources :users
  root "welcome#index"
end
