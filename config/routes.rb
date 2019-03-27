  Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :services
  resources :enquiries
  resources :posts
  resources :appointments

  devise_for :users, controllers: {registrations:'registrations'}

get 'home', to: "pages#home"
get 'about', to: "pages#about"
#get 'contact', to: "pages#contact"
get 'news', to: "pages#news"
get 'services', to: "pages#services"

root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
