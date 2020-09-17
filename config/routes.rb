Rails.application.routes.draw do
  devise_for :learners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :notes
  resource :dashboard, only: :show, controller: :dashboard
  root to: 'dashboard#show'
end
