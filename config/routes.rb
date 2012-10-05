#SlimFast::Engine.routes.draw do
Rails.application.routes.draw do

  match '/:code' => 'short_urls#expand', :constraints => lambda { |req| 
                                ShortDomain.pluck(:domain).include?(req.domain) 
                              }

  resources :expansions
  resources :short_domains do
  	resources :short_urls do
      resources :expansions
    end
  end
  resources :short_urls
  
end
