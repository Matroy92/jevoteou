Rails.application.routes.draw do
  root to: 'votes#index'
  resources :votes, only: :index
end
