Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
}
  resources :rankings
  resources :users
  
  

  #下はrootの場合強制でログイン画面に遷移
  root :to => 'rankings#index'
end
