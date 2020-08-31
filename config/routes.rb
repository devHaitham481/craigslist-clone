Rails.application.routes.draw do
  devise_for :accounts
  resources :posts
  resources :categories
  get "/scams" => "public#scams", as: :scams
  get "/terms" => "public#terms", as: :terms
  get "/safety" => "public#safety", as: :safety
  get "/faqs" => "public#faqs", as: :faqs
   devise_scope :account do
     get "/accounts/sign_out" => "devise/sessions#destroy"
   end
  root to: "public#home"
end
