Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/doctors/schedules', to: 'doctors#schedules', as: "doctors_schedule"
  post '/doctors/book', to: 'doctors#book', as: "doctors_book"
  post '/auth/login', to: 'authentication#login', as: "auth_login"
  resources :users
  resources :doctors
  resources :hospitals
  resources :schedules
  get '/*a', to: 'application#not_found'
end
