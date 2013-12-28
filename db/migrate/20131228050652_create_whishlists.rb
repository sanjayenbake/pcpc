class CreateWhishlists < ActiveRecord::Migration
  def change
    create_table :whishlists do |t|
      t.references :user

      t.timestamps
    end
  end
end
