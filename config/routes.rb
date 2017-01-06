Rails.application.routes.draw do
  devise_for :users

  resources :eng_word_translations
  resources :eng_words
  get 'welcome_page/welcome'
  root 'welcome_page#welcome'
end
