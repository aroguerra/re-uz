class RemoveSellerIdFromAuctions < ActiveRecord::Migration[5.2]
  def change
    remove_column :auctions, :seller_id, :integer
  end
end
