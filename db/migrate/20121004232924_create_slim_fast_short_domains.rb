class CreateSlimFastShortDomains < ActiveRecord::Migration
  def change
    create_table :slim_fast_short_domains do |t|
      t.string :domain,		 :required => true
      t.boolean :is_default, :default => false

      t.timestamps
    end
  end
end
