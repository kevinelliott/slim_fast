class CreateSlimFastExpansions < ActiveRecord::Migration
  def change
    create_table :expansions do |t|
      t.integer :short_url_id, :required => true
      t.integer :domain_id
      t.string :request_url
      t.string :referrer_url
      t.string :remote_ip
      t.string :remote_addr
      t.string :user_agent

      t.timestamps
    end
  end
end
