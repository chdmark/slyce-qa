Rails.application.routes.draw do
  

  resources :qas, only: [:create, :show] do
    resources :questions, only: [:index]
  end

  resources :questions, only: [:create]
  resources :answers, only: [:create]
  root :to => redirect('/qa-worktest.html')
end
