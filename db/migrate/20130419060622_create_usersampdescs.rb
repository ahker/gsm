class CreateUsersampdescs < ActiveRecord::Migration
  def change
    create_table :usersampdescs do |t|
      t.belongs_to :sample
      t.text :desc

      t.timestamps
    end
    add_index :usersampdescs, :sample_id
  end
end
