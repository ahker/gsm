class AddAttachPaperclip < ActiveRecord::Migration
  def up
  	add_attachment :samples, :samp_file_name
  end

  def down
  	remove_attachment :samples, :samp_file_name
  end
end
