module SlimFast
  class Expansion < ActiveRecord::Base
    attr_accessible :domain_id, :referrer_url, :remote_addr, :remote_ip
    attr_accessible :request_url, :short_url_id, :user_agent

    belongs_to :short_url
  end
end
