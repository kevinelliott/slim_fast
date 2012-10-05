Rails.application.routes.draw do

  match '/invalid_code' => 'errors#invalid_code', :as => :invalid_code

  resources :expansions
  resources :short_domains do
  	resources :short_urls do
      resources :expansions
    end
  end
  resources :short_urls

  match '/:code' => 'short_urls#expand', :constraints => lambda { |req| 
                                ShortDomain.pluck(:domain).include?(req.domain) 
                              }, :as => :code
  
end
