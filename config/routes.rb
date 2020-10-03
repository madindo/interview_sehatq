Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/doctors/schedules', to: 'doctors#schedules'
  post '/doctors/book', to: 'doctors#book'
  resources :users #, param: :_username
  resources :doctors
  resources :hospitals
  resources :schedules
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
