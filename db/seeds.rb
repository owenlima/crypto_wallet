# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cadastrando moedas..."

coins = [
    { description: "Bitcoin",
      acronym: "BTC",
      url_image: "https://cryptologos.cc/logos/bitcoin-btc-logo.png" },

    { description: "Ethereum",
      acronym: "BTC",
      url_image: "https://cryptologos.cc/logos/ethereum-eth-logo.png" },

    { description: "Dash",
      acronym: "DSH",
      url_image: "https://cryptologos.cc/logos/dash-dash-logo.png" }
  ]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end

puts "Moedas cadastradas com sucesso!"
