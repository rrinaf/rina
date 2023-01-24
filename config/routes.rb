Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
#ここから
 resources :users, only: [:show] 
  get 'dramas/enjoy' => 'dramas#enjoy'
  get 'dramas/sad' => 'dramas#sad'
  get 'dramas/heartthrob' => 'dramas#heartthrob'
  get 'dramas/breathtaking' => 'dramas#breathtaking'
  get 'dramas/laugh' => 'dramas#laugh'

  resources :dramas do
    resources :goods, only: [:create, :destroy]
  end
  
 
 
 root 'dramas#index'
 
 end


