class AddStatusAndUseridToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :status, :integer
    add_column :samples, :user_id, :integer
  end
end
