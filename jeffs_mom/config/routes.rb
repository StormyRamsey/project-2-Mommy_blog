Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  root 'welcome#index'

  resources :comments do
    resources :comments
  end
end
