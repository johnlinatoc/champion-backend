Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :monthly_budgets, :categories, :expenses
  resources :users, only: [:create]

  get '/profile' , to: 'users#profile'
  get '/users/:id/categories' , to: 'categories#user_categories'
  get '/users/:id/expenses' , to: 'expenses#user_expenses'
  get '/users/:id/months' , to: 'monthly_budgets#user_months'
  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  get '/current_user/:id', to: 'users#show'
  post '/current_user', to: 'users#create'
  patch '/current_user/:id', to: 'users#update'
  delete '/current_user/:id', to: 'users#destroy'
  patch '/new_budget', to: 'monthly_budgets#newMonthBudget'

end
