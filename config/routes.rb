Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hooks/get'
  post 'hooks/post'
  root to: 'dashboard#root'
end
