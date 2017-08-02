Rails.application.routes.draw do
  root 'homes#index'
  resources :questions do
    resources :answers
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login', to: 'homes#login'
  get '/logout', to: 'homes#logout'
  delete '/delete_answer', to: 'answers#destroy'
end
