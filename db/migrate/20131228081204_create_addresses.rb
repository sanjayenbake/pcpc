class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :fname
      t.string :lname
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.references :state, index: true
      t.string :phone
      t.string :zipcode

      t.timestamps
    end
  end
end
