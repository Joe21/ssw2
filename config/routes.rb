Ssw2::Application.routes.draw do
  devise_for :users
  root to: 'entries#index'
  resources :entries

  post '/users/add_counter' => 'users#add_counter', as: 'add'
  post '/users/minus_counter' => 'users#minus_counter', as: 'minus'
  post '/users/reset_counter' => 'users#reset_counter', as: 'reset'
end

        # <form action='<%= add_path %>' method='post'>
          # <button type="submit">+</button>
        # </form>