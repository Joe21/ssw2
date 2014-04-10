Ssw2::Application.routes.draw do
  devise_for :users
  root to: 'entries#index'
  resources :entries

  post '/users/:id/add_counter' => 'users#add_counter', as: 'add'
  post '/users/:id/minus_counter' => 'users#minus_counter', as: 'minus'
end