Rails.application.routes.draw do
  resources :customers
  get 'home' => "welcome#index"
  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
