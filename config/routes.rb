Rails.application.routes.draw do
  resources :overheards
root 'overheards#index' 
end
