class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.datetime :date_time
      t.integer :seller_id
      t.integer :buyer_id
      t.integer :price
      t.integer :quantity
      t.integer :product_id




      t.timestamps
    end
  end
end
