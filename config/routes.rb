Rails.application.routes.draw do
  get 'welcome/index'
  root :to => "welcome#index"
  resources :products
  resources :categories
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      post 'auth_user' => 'authentication#authenticate_user'
    end
  end

end
