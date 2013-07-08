Floofydoug::Application.routes.draw do
  resources :posts


  authenticated :user do
    root :to => 'welcome#index'
  end
  root :to => "welcome#index"
  devise_for :users
  resources :users
end