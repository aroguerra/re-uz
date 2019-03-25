class AddBuyerToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_reference :transactions, :buyer_user
  end
end
