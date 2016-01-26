Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root 'welcome#index'
  get 'about' => 'welcome#about'

  resources :sleeplogs

  resources :todos

  resources :reminders do
    resources :user_reminders
  end

  resources :diaries
end
