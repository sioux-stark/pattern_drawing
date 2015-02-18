Rails.application.routes.draw do
 root to: 'sites#index'

 resources :users
 get "/login", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  get "/sign_up", to: "users#new", as: "sign_up"

  resources :users
  get "/drawings", to: "drawings#index"

post "/drawings", to: "drawings#create"

 get "/sign_up", to: "users#new"
 get "/login", to: "sessions#new"
 post "/login", to: "sessions#create"
 delete "/session", to: "sessions#destroy"
 get '/logout', to: 'sessions#destroy'

end




#    root GET    /                         sites#index
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#   sign_up GET    /sign_up(.:format)        users#new
#     login GET    /login(.:format)          sessions#new
#           POST   /login(.:format)          sessions#create
#   session DELETE /session(.:format)        sessions#destroy
#    logout GET    /logout(.:format)         sessions#destroy