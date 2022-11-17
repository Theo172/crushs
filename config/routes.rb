Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :pictures
  resources :profils
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
end
