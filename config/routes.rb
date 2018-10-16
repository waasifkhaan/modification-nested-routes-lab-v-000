Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  resources :authors, only: [:show, :index] do
  resources :posts, only: [:show, :index, :new, :edit]
end
end
