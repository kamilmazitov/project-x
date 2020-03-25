Rails.application.routes.draw do
  resources :messages, only: %i[new create]

  namespace :admin_scope do
    root to: "main#index"
    get "main/index"
    resources :stories
  end

  devise_for :admins, controllers: { sessions: "admin_scope/sessions",
                                     passwords: "admin_scope/passwords" }
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"
  resources :stories, only: %i[index show]
  get "about_me", to: "pages#about_me"
  get "contact", to: "messages#new"
end
