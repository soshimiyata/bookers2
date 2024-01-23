Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'homes#top'
  get 'homes/about' => "homes#about", as:"about"
  resources :books, only: [:new, :index, :show, :edit, :create]
  resources :users, only: [:index, :edit, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
