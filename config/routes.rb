Rails.application.routes.draw do

  get '/dishes/all' => 'dishes#all'
  get '/tags/all' => 'tags#all'
  get '/users/all' => 'users#all'

  resources :dishes # except: [:destroy,:show] etc
  resources :tags
  resources :users

          # controller # action
  get '/' => 'pages#index', as: :root
  get '/about' => 'pages#about'

  # /session/new
  get '/login' => 'session#new'

  # /session/create
  post '/login' => 'session#create'

  # /session/delete
  delete '/logout' => 'session#destroy'


  # # get show form
  # get '/dishes/new' => 'dishes#new'

  # # post form - create
  # post '/dishes' => 'dishes#create'

  # # delete destroy
  # delete '/dishes/:id' => 'dishes#destroy'

  # # get show edit form
  # get '/dishes/:id/edit' => 'dishes#edit'

  # # put form - update
  # put '/dishes/:id' => 'dishes#update'

  # # get - show single dish  ##################### easiest !!!!!!!!
  # get '/dishes' => 'dishes#index'
end
