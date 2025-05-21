# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "0769877901")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza de la mama", address: "56A Shoreditch High St, London E1 6PQ", category: "french")
puts "Created Pizza East"
Restaurant.create!(name: "MiniDall", address: "35 Locato St, Paris", category: "belgian", phone_number: "0660354673")
puts "Created Dishoom"
Restaurant.create!(name: "Space Burger ", address: "256 Le vivier, Machecoul", category: "japanese")
puts "Created Pizza East"
Restaurant.create!(name: "Saucice Party", address: "14 Petit Bel air, Nantes", category: "italian", phone_number: "0735877871")
puts "Created Pizza East"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
