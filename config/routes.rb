Rails.application.routes.draw do
  resources :tasks
  devise_for :users
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'sign_out', to: 'devise/registrations#new'
  end

  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
