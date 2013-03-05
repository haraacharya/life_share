LifeShare::Application.routes.draw do
  
	root :to => "StaticPages#home" 
	devise_for :users, :path => 'accounts', controllers: { confirmations: 'confirmations' }
	
	devise_scope :user do
  		get '/confirmation-getting-started' => 'userdetails#new', as: 'confirmation_getting_started'
	end

	resources :userdetails, only: [:create, :new, :show, :edit, :update]
	
	resources :date_ideas, only: [:new, :create, :show] do
		resources :comments, only: [:new, :create, :show]
		resources :votes, only: [:create]
	end


end