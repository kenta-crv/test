Rails.application.routes.draw do
  devise_for :admins
  #devise_for :admins

  #root to: 'app#index' #トップランディングページ
  get 'app' => 'app#index'
  get 'it' => 'it#index'

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'

  get 'recruits' => 'recruits#index'
  post 'recruits/confirm' => 'recruits#confirm'
  post 'recruits/thanks' => 'recruits#thanks'
end
