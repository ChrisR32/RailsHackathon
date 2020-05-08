Rails.application.routes.draw do

  get 'pages/home'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :expenses do
     resources :expense_occurrence
  end

  resources :payments, :pay_expenses
end
