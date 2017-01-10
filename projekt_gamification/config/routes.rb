Rails.application.routes.draw do
	
  get 'questions/index' => 'questions#index', as: 'questions_index'
  get 'questions/check-correct' => 'questions#check_correct', as: 'check_correct'
  get 'questions/get-new-question' => 'questions#get_new_question', as: 'get_new_question'

  get 'levels/index' => 'levels#index', as: 'levels_index'
  get 'levels/check-playable' => 'levels#check_playable', as: 'check_playable'

  get 'concepts/index' => 'concepts#index', as: 'concepts_index'
  get 'concepts/check-unlocked' => 'concepts#check_unlocked', as: 'check_unlocked'
  

  


  devise_for :users

  devise_scope :user do
  	authenticated :user do
    	root 'users#index', as: :authenticated_root
 	 end

 	 unauthenticated do
    	root 'devise/sessions#new', as: :unauthenticated_root
  	end
  end
  #root "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match ":controller(/:action(/:id))", :via => :get
end
