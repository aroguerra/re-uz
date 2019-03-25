class AddSellerToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_reference :transactions, :seller_user
  end
end
