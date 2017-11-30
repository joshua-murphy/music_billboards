Rails.application.routes.draw do

  # get 'billboards/:billboard_id/artists/:id/songs/index'

  root "billboards#index"

  resources :billboards do
    resources :artists
  end

  resources :artists
    
  scope "artists/:artist_id", as: "artist" do
    resources :songs
  end

end