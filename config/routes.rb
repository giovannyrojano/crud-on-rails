Rails.application.routes.draw do
  get 'home/Home'
  resources :multa
  resources :detalles
  resources :prestamos
  resources :usuarios
  resources :libros
  root 'home#Home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
