Rails.application.routes.draw do
  root 'homes#top'
  resources :books, only: [:new, :index, :show, :edit]
  resources :users, only: [:index, :edit, :edit]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
