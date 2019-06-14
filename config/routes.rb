Rails.application.routes.draw do
  root to: 'tops#lp' #トップランディングページ

  get '/lp' => 'tops#lp'
  get '/business' => 'tops#business'
  get '/price' => 'tops#price'
  get '/company' => 'tops#company'
  get '/president' => 'tops#president'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'
end
