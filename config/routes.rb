Rails.application.routes.draw do
  devise_for :users

  resources :eng_words
  resources :eng_word_translations

  get 'welcome_page/welcome'
  root 'welcome_page#welcome'
end
