Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  root to: 'recipes#index'

  resources :users, only: %i[index show edit update]

  resources :recipes do
    resources :likes, only: %i[create destroy]
  end
end
