Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  # get "/", to: "pages#home", as: "root"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< Updated upstream
=======
  # resources :expense
  # resources :expense_occurences
  get "/expenses", to: "expenses#index", as: "expenses"
  post "/expenses", to: "expenses#create"
  get "/expenses/new", to: "expenses#new", as: "new_expense"
  get "/expenses/:id", to: "expenses#show", as: "expense"
  put "/expenses/:id", to: "expenses#update"
  patch "/expenses/:id", to: "expenses#update"
  delete "/expenses/:id", to: "expenses#destroy"
  get "/expenses/:id/edit", to: "expenses#edit", as: "edit_expense"

  get "*path", to: "pages#not_found"
>>>>>>> Stashed changes
end
