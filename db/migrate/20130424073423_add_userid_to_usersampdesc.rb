class AddUseridToUsersampdesc < ActiveRecord::Migration
  def change
    add_column :usersampdescs, :user_id, :integer
  end
end
