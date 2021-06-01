Rails.application.routes.draw do
  resources :infraccions
  get 'home/Home'
  resources :detalles
  resources :prestamos
  resources :usuarios
  resources :libros

  get '/prestamos_usuario/', to: 'prestamos#prestamo_usuario', as: 'prestamos_usuario'

  root 'home#Home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
