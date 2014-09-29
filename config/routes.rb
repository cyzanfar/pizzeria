Rails.application.routes.draw do
  root 'pizza#index'

  post 'pizza/order'

  
end
