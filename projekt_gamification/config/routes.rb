Rails.application.routes.draw do
	
  get 'questions/index' => 'questions#index', as: 'questions_index'
  get 'questions/check-correct' => 'questions#check_correct', as: 'check_correct'
  get 'questions/get-new-question' => 'questions#get_new_question', as: 'get_new_question'

  get 'levels/index' => 'levels#index', as: 'levels_index'

  get 'concepts/index'

  get 'concept/index'

  get 'levels/begginer'

  get 'levels/intermediate'

  get 'levels/expert'

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
