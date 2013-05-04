class AddAwbnumberAndCouriernameAndDatesentToSample < ActiveRecord::Migration
  def change
    add_column :samples, :awb_number, :string
    add_column :samples, :courier_name, :text
    add_column :samples, :date_sent, :date
  end
end
