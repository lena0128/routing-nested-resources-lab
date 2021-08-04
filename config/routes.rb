Rails.application.routes.draw do
  # Create a nested resource routes to show all songs to an artist => /artist/:id/songs
# And individual songs for that artist => /artists/1/songs/1
# Restrict the nested songs routes to `index` and `show` actions only

resources :artists do
  resources :songs, only: [:index, :show]
end
resources :songs

end
