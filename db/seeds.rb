# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('db', 'pokemons.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')

csv.each do |row|
  poké = Pokemon.new
  poké.id = row['_id']
  poké.name = row['name']
  poké.image_url = row['image_url']
  poké.identifier = row['identifier']
  poké.weight = row['weight'].to_i
  poké.height = row['height'].to_i
  poké.kind = row['type']
  poké.save!
end
