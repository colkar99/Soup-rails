Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, :soups
  root "categories#index"
  get "/allcategories", to: redirect("/")
  get "soup/:id/toggle_featured", to: "soups#toggle_featured", as: :toggle_featured
  get "/secret_soups" ,to: "soups#secret_soups"
end
