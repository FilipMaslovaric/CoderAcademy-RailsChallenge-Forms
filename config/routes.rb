Rails.application.routes.draw do
  root 'pages#home'
  match 'subscribe', to: 'pages#subscribe', via: [:get, :post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
