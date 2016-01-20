Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'
  get 'about' => 'welcome#about'

  resources :sleeplogs

  resources :todos

  resources :reminders do
    resources :user_reminders
  end
end
