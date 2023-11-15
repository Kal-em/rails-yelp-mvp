puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
sea_palace = { name: 'Sea Palace', address: 'Oosterdokskade 8, 1011 AE Amsterdam', category: 'chinese' }
verona = { name: 'Verona Ristorante', address: 'Regulier 7, 1017 BJ Amsterdam', category: 'italian' }
sapporo = { name: 'Sapporo', address: 'Scheldestraat 99-H, 1078 GJ Amsterdam', category: 'japanese' }
bistro_alpes = { name: 'Bistro des alpes', address: 'Utrechaat 141, 1017 WE Amsterdam', category: 'french' }
fritterie = { name: 'La Fritterie', address: 'Mannenkemn 8, 1083 AD Amsterdam', category: 'belgian' }

[sea_palace, verona, sapporo, bistro_alpes, fritterie].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
