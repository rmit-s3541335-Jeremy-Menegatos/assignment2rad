Rails.application.routes.draw do
  resources :posts do
    resources :comments
end
namespace 'v0' do
    resources :posts
    
  end
  
namespace 'v0' do
    resources :users
end

namespace 'v0' do
  resources :comments
  
end
  

  get 'index/homepage' 
  get 'index/newcomments'
  get 'index/submit'
  get 'users/login'
  get 'index/about'
  get 'index/json'
 root 'index#homepage'
  post '/users' => 'users#create'
  post '/sessions' => 'sessions#create'
  post '/comments' => 'comments#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 





end