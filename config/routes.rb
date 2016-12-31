Rails.application.routes.draw do
  resources :eng_words
  devise_for :users
  get 'welcome_page/welcome'
  root 'welcome_page#welcome'
end
