class RemoveBuyerIdFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :buyer_id, :integer
  end
end
