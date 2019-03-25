require 'csv'

Users.destroy_all
Products.destroy_all
Transaction.destroy_all
Auction.destroy_all
Offer.destroy_all

CSV_OPTIONS = {
  col_sep: ';',
  quote_char: '"',
  headers: :first_row,
  header_converters: :symbol
}

CSV.foreach('./db/users.csv', CSV_OPTIONS) do |row|
  user = User.new(
    email: row[0],
    name: row[1]
    password: row[2],
    address: row[3],
    phone_number: row[4],
    balance: 1000
    )
  user.save
end

CSV.foreach('./db/products.csv', CSV_OPTIONS) do |row|
  product = Product.new(
    name: row[0],
    quality: row[1],
    value: row[2],
    owner: row[3],
    quantity: row[4]
    )
  product.save
end

CSV.foreach('./db/transactions.csv', CSV_OPTIONS) do |row|
  transaction = Transaction.new(
    date_time: row[0],
    price: row[1],
    quantity: row[2],
    product_id: row[3],
    buying_user_id: row[4],
    selling_user_id: row[5]
    )
  transaction.save
end

CSV.foreach('./db/auctions.csv', CSV_OPTIONS) do |row|
  auction = Transaction.new(
    start_time: row[0],
    end_time: row[1],
    seller_id: row[2],
    initial_price: row[3],
    quantity: row[4],
    product_id: row[5],
    offer_id: row[6],
    user_id: row[7]
    )
  auction.save
end


CSV.foreach('./db/offers.csv', CSV_OPTIONS) do |row|
  offer = Competition.new(
    buyer_id: row[0],
    offer_price: row[1]
    )
  offer.save
end



