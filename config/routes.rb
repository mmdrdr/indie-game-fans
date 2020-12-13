Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
  }
  root 'homes#top'
  devise_scope :user do
    post 'users/guest_sign_in' => 'users/sessions#new_guest'
  end
  resources :users, only: [:index, :show, :edit, :update, :destroy] do
    resource :relationships, only: [:create, :destroy]
    get 'follows' => 'relationships#follower', as: 'follows'
    get 'followers' => 'relationships#followed', as: 'followers'
  end
  resources :games do
    resources :comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  get '/search' => 'search#search'
  resource :contacts, only: [:new, :create] do
    get "/thanks" => "contacts#thanks"
  end
  resources :notifications, only: [:index, :destroy]
end
