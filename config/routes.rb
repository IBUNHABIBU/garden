Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#home'

  resources :services, only: [:index]
  resources :testimonials, only: [:index]
  resources :bookings, only: [:new, :create]
  resources :contacts, only: [:new, :create]

  get '/about', to: 'pages#show', id: 'about'
  get '/contact', to: 'contacts#new'

  # Catch-all for pages
  get '/:id', to: 'pages#show', as: :page, constraints: { id: /(?!home|about|contact).+/ }
end