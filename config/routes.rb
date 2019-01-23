Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/restaurants', to: 'restaurants#index'

  # get '/restaurants/new', to: 'restaurants#new'

  # post '/restaurants', to: 'restaurants#create'

  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # root to: 'restaurants#index'

  # post '/restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews
  # get '/restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review

  resources :restaurants, only: [:index, :show, :create, :new] do
    resources :reviews, only: [:new, :create]
  end

end
