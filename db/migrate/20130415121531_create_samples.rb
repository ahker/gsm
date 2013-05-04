class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :samp_id
      t.date :iss_date
      t.date :tar_date
      t.text :desc
      t.string :priority
      t.string :samp_file_name

      t.timestamps
    end
  end
end
