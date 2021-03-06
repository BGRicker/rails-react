Rails.application.routes.draw do
  root to: "static#home"
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logout, to: "sessions#logged_in"
end
