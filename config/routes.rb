Rails.application.routes.draw do
  get  'microposts/index'
  post 'microposts/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
