Rails.application.routes.draw do
  namespace :admin_scope do
    root to: "main#index"
    get "main/index"
    resources :stories
  end

  devise_for :admins, controllers: { sessions: "admin_scope/sessions",
                                   passwords: "admin_scope/passwords" }
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"
end
