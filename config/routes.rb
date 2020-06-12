Rails.application.routes.draw do
  patch "/alumnis/addsibsnkids/:id", to: "alumnis#add_sibs_n_kids"
  delete "/siblings/:id", to: "alumnis#remove_sibling"
  delete "/children/:id", to: "alumnis#remove_child"
  get "/users", to: "users#index"
  post "/users", to: "users#create"
  post '/login', to: "auth#login"
  get '/autologin', to: "auth#autologin"
  resources :alumnis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
