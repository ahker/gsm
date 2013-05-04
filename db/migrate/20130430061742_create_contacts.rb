class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :companyname
      t.text :address1
      t.text :address2
      t.text :address3
      t.text :address4
      t.text :address5
      t.string :postcode
      t.string :buyer
      t.string :phone
      t.string :fax
      t.string :email
      t.string :status
      t.text :notes
      t.string :region
      t.string :country
      t.integer :salutation
      t.string :updated_by
      t.integer :archived

      t.timestamps
    end
  end
end
