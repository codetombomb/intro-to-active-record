class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.float :amount #float type
      t.datetime :date #date type
      t.boolean :completed, :default => false #boolean type with default value
      t.belongs_to :organization # This will assign a foreign key with index. You could also define this like: t.integer :organization_id
      t.belongs_to :donor 
    end
  end
end
