Rails.application.routes.draw do

  root 'pages#index'
  get '/articles', to: 'posts#index', as: 'posts'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
