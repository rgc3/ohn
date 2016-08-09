Rails.application.routes.draw do
  devise_for :users
  resources :overheards

root 'overheards#index'
end
