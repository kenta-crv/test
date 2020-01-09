Rails.application.routes.draw do
  devise_for :admins
  #devise_for :admins

  root to: 'app#index' #トップランディングページ
  get 'lp' => 'app#lp'
  get 'app/business' => 'app#business'
  get 'app/price' => 'app#price'
  get 'app/company' => 'app#company'
  get 'app/agent' => 'app#agent'
  get 'app/review' => 'app#review'
  get 'app/recruit' => 'app#recruit'

  resources :posts

  get 'it' => 'it#index'
  get 'it/business' => 'it#business'
  get 'it/price' => 'it#price'
  get 'it/company' => 'it#company'
  get 'it/privacy' => 'it#privacy'
  get 'it/agent' => 'it#agent'
  get 'it/review' => 'it#review'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'

  get 'recruits' => 'recruits#index'
  post 'recruits/confirm' => 'recruits#confirm'
  post 'recruits/thanks' => 'recruits#thanks'
end
