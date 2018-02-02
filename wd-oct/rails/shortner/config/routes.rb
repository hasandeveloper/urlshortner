Rails.application.routes.draw do
  resources :urls
  root "urls#index"
  get '/:short_url', to: 'urls#show'

end
