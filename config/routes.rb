Ssw2::Application.routes.draw do
  devise_for :users

  root to: 'users#dashboard'

  resources :entries

              #       root GET    /                              users#dashboard
              #    entries GET    /entries(.:format)             entries#index
              #            POST   /entries(.:format)             entries#create
              #  new_entry GET    /entries/new(.:format)         entries#new
              # edit_entry GET    /entries/:id/edit(.:format)    entries#edit
              #      entry GET    /entries/:id(.:format)         entries#show
              #            PATCH  /entries/:id(.:format)         entries#update
              #            PUT    /entries/:id(.:format)         entries#update
              #            DELETE /entries/:id(.:format)         entries#destroy
  
  
end
