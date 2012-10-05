class ShortUrl < ActiveRecord::Base
  attr_accessible :code, :description, :destination_url, :short_domain_id
  attr_accessible :expansion_count, :name, :owner_id, :owner_type
  attr_accessible :utm_campaign, :utm_content, :utm_enabled, :utm_medium, :utm_source, :utm_term

  belongs_to :short_domain
  belongs_to :owner, :polymorphic => true
  has_many :expansions

  validates_presence_of   :name
  validates_presence_of   :code
  validates_uniqueness_of :code
  validates_presence_of   :destination_url

  before_validation :generate_and_set_code

  def generate_and_set_code
    if self.code.present?
      puts "a valid code is already set for this short url: " + self.code
    else
      temp_code = random_code
      puts "random code = " + temp_code
    	while ShortUrl.where(:code => temp_code).count > 0
        puts "code already exists! " + temp_code
    		temp_code = random_code
        puts "random code = " + temp_code
      end
      self.code = temp_code
    end
  end

  def random_code
  	rand(36**8).to_s(36).gsub("/","_").gsub(/=+$/,"")
  end
end
