module SlimFast
  class ShortDomain < ActiveRecord::Base
    attr_accessible :domain, :is_default

    has_many :short_urls
    has_many :expansions, :through => :short_urls
  end
end
