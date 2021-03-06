Rails.application.routes.draw do
  devise_for :users

  resources :eng_word_translations do
    get "/new/eng_words/:eng_word_id", :to => "eng_word_translations#new", :as => :new, :on => :collection
  end

  resources :eng_words
  get '/search/:word', :to => 'eng_words#search'
  get 'welcome_page/welcome'
  root 'welcome_page#welcome'
end
