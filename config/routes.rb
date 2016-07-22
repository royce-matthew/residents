Rails.application.routes.draw do
  resources :logs
  resources :residents
 root to: "pages#index"
 get "/modify/:id_num", to: "pages#modify"
end
