Rails.application.routes.draw do
  devise_for :users
  get 'welcome_page/welcome'
  root 'welcome_page#welcome'
end
