Rails.application.routes.draw do
  resources :test_data
  root 'static_pages#index'
end
