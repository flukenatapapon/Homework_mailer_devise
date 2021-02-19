Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "user#index"
  get "/index", to: "user#index", as: "spam"
  post "/back" => "user#index"
  get "/a", to: "landingmail#a", as: "a"
  get "/goToProfile" => "user#user_info"
  get "/edit_user_info/:id" => "user#edit_user_info", as: "edit_user_info"
  post "/edit_user/:id" => "landingmail#edit_user", as: "edit_user"
  get "/landing_send_mail" => "landingmail#landing_send_mail", as: "landing_send_mail"
  post "/send_mail" => "landingmail#send_mail", as:"send_mail"
end
