class CreateBillingInfos < ActiveRecord::Migration
  def change
    create_table :billing_infos do |t|
      t.string :month
      t.integer :year
      t.string :cc_last
      t.string :cc_type
      t.string :fname
      t.string :lname
      t.references :address
      t.references :user

      t.timestamps
    end
  end
end
