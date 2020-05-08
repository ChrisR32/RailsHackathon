Rails.application.routes.draw do
  get 'pay_expenses/index'
  get 'pay_expenses/create'
  get 'pay_expenses/new'
  get 'pay_expenses/edit'
  get 'pay_expenses/show'
  get 'pay_expenses/update'
  get 'pay_expenses/destroy'
  get 'expense_occurrences/index'
  get 'expense_occurrences/create'
  get 'expense_occurrences/new'
  get 'expense_occurrences/edit'
  get 'expense_occurrences/show'
  get 'expense_occurrences/update'
  get 'expense_occurrences/destroy'
  get 'expenses/index'
  get 'expenses/create'
  get 'expenses/new'
  get 'expenses/edit'
  get 'expenses/show'
  get 'expenses/update'
  get 'expenses/destroy'
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
  delete "/expenses/:id", to: "expenses#destroy"
  get "/expenses/:id/edit", to: "expenses#edit", as: "edit_expense"

  get "*path", to: "pages#not_found"

end
