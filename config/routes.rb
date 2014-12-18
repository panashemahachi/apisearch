Rails.application.routes.draw do
  resources :libraries

  resources :apis do

    #route for CSV importer
    collection { post :import }
  end

  resources :libraries do

    #route for CSV importer
    collection { post :import
                  get :autocomplete }
  end

root :to => "search#search"

end
