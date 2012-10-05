#SlimFast::Engine.routes.draw do
Rails.application.routes.draw do

  resources :expansions
  resources :short_domains do
  	resources :short_urls do
      resources :expansions
    end
  end
  resources :short_urls

	#root :to => "short_domains#index"
  
end
