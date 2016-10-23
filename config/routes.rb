Rails.application.routes.draw do
  resources :sessions, only: [:new, :create] 
  resources :messages

  get 'messages_sent' => 'messages#sent'

	delete '/logout' => 'sessions#destroy'
	root 'users#index'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

