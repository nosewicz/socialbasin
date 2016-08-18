Rails.application.routes.draw do
 resources :feeds 
  get 'entries/index'
get 'entries/show'
    root 'feeds#index'
end
