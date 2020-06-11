Rails.application.routes.draw do
  resources :users
  patch "/alumnis/addsibsnkids/:id", to: "alumnis#add_sibs_n_kids"
  delete "/siblings/:id", to: "alumnis#remove_sibling"
  delete "/children/:id", to: "alumnis#remove_child"
  resources :alumnis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
