Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  resources :artists, only: [:show, :index] do
  resources :songs, only: [:show, :index, :new, :edit]
end
end
