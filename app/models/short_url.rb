class ShortUrl < ActiveRecord::Base
  attr_accessible :code, :description, :destination_url, :short_domain_id
  attr_accessible :expansion_count, :name, :owner_id, :owner_type
  attr_accessible :utm_campaign, :utm_content, :utm_enabled, :utm_medium, :utm_source, :utm_term

  belongs_to :short_domain
  belongs_to :owner, :polymorphic => true

  before_save :generate_code

  def generate_code
  	
  end
end
