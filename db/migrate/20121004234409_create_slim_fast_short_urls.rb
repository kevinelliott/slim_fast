class CreateSlimFastShortUrls < ActiveRecord::Migration
  def change
    create_table :short_urls do |t|
      t.integer :short_domain_id
      t.string :code,             :required => true
      t.string :destination_url,  :required => true
      t.string :name,             :required => true
      t.text :description
      t.integer :expansion_count, :default => 0
      t.string :owner_type
      t.integer :owner_id
      t.boolean :utm_enabled,     :default => false
      t.string :utm_source
      t.string :utm_medium
      t.string :utm_campaign
      t.string :utm_term
      t.string :utm_content

      t.timestamps
    end
  end
end
