Paporeto::Application.routes.draw do
  #GemUploadBox
  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
  #GemDevise
  devise_for :users

  #Administrador----------------------------------------------------------------------------------------------------------------
  namespace :admin do
    resources :categories, excepte: :show
    resources :articles
    resources :users, excepte: :show
    root 'articles#index'
  end

  #Public ------------------------------------------------------------------------------------------------------------------------

  #Articles
  resources :articles, only: [:index , :show]

  #HomePage
  root 'home#index'

end
