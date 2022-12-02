Rails.application.routes.draw do
  devise_for :user, controllers: { registrations: "registrations" }, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :profils do
    resources :pictures
  end
  resources :likes, only: [:index, :create, :new, :show]
  resources :cities, only: [:new, :create, :show, :update, :edit]
  resources :genders, only: [:new, :create, :show, :update, :edit]
  resources :age_ranges, only: [:new, :create, :show, :update, :edit]
  resources :profile_crushes, only: [:new, :create]
  resources :crushes do
    resources :crush_icebreaker_questions, only: [:index, :show, :new, :create]
    resources :icebreaker_question_answers, only: [:index, :show, :new, :create]
    resources :crush_messages, only: [:index, :show, :new, :create]
  end
  resources :icebreaker_questions, only: [:show]
  # namespace :user do
  #   root :to => "profils#create"
  # end
end
