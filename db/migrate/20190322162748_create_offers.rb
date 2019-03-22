class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :buyer_id
      t.integer :offer_price
      t.references :auction, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
