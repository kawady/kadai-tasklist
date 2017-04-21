Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  
   # edit: 更新用のフォームページ
  get 'tasks/:id/edit', to: 'tasks#edit'
  
 # get "tasks", to: "toppages#index"
  resources :users, only: [:index, :show, :new, :create] 
  
  resources :tasks, only: [:create, :destroy, :edit, :update, :show]
end