class CreateUsermodules < ActiveRecord::Migration
  def change
    create_table :usermodules do |t|
      t.string :module_name

      t.timestamps
    end
  end
end
