Rails.application.routes.draw do

  scope :admin_scope do
    devise_for :admins, controllers: { sessions: 'admin_scope/admins/sessions',
                                       passwords: 'admin_scope/admins/passwords'}
  end

  namespace :admin_scope do
    root to: 'main#index'
    get 'main/index'
  end

  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"
end
