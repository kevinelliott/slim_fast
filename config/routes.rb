SlimFast::Engine.routes.draw do

  resources :expansions
  resources :short_domains do
  	resources :short_urls do
      resources :expansions
    end
  end
  resources :short_urls

end
