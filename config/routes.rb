Rails.application.routes.draw do
  resources :articles
  root 'pages#about'
  get 'about', to: 'pages#about'
end
