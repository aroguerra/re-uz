class CreateAuctions < ActiveRecord::Migration[5.2]
  def change
    create_table :auctions do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :seller_id
      t.integer :initial_price
      t.integer :quantity
      t.integer :product_id
      t.integer :offer_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
