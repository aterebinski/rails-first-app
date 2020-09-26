Rails.application.routes.draw do
  get 'home/index'
  get "o-stronie", to: 'home#about', as: :about
  get "kontakt", to: 'home#contact', as: :contact
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
