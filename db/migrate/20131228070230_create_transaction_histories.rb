class CreateTransactionHistories < ActiveRecord::Migration
  def change
    create_table :transaction_histories do |t|
      t.references :order, index: true
      t.string :transaction_id
      t.string :transaction_type
      t.references :user, index: true
      t.string :status

      t.timestamps
    end
  end
end
