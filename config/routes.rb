Rails.application.routes.draw do
  resources :apis

  get 'search', to: 'search#search'
end
