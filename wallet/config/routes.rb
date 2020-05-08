Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  # get "/", to: "pages#home", as: "root"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # resources :expenses do
  #    resources :expense_occurrence
  # end

  # resources :payments, :pay_expenses


  get "/expenses", to: "expenses#index", as: "expenses"
  post "/expenses", to: "expenses#create"
  get "/expenses/new", to: "expenses#new", as: "new_expense"
  get "/expenses/:id", to: "expenses#show", as: "expense"
  put "/expenses/:id", to: "expenses#update"
  patch "/expenses/:id", to: "expenses#update"
  delete "/expenses/:id", to: "expenses#destroy", as: "delete_expense"
  get "/expenses/:id/edit", to: "expenses#edit", as: "edit_expense"

  get "*path", to: "pages#not_found"

end
