Rails.application.routes.draw do
  root to: "cocktails#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, except: %i(index) do
    resources :doses, only: %i(new create)
  end
  resources :doses, only: %i(edit destroy)

end
