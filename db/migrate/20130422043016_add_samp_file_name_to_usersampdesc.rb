class AddSampFileNameToUsersampdesc < ActiveRecord::Migration
  def change
    add_column :usersampdescs, :samp_file_name, :string
    add_attachment :usersampdescs, :samp_file_name
  end
end
