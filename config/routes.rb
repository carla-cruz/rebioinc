Rebioinc::Application.routes.draw do

  devise_for :users
  root :to => "static_pages#index"
  get '/admin' => 'static_pages#admin'
  get '/philosophy' => 'static_pages#philosophy'
  get '/our_process' => 'static_pages#our_process'
  get '/our_process_2' => 'static_pages#our_process_2'

  resources :team_members
  resources :faqs
  resources :home_statements
end
