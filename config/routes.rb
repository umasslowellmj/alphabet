Rails.application.routes.draw do
  devise_for :users

  resources :eng_words do
    resources :eng_word_translations do

    end
  end

  get 'welcome_page/welcome'
  root 'welcome_page#welcome'
end
