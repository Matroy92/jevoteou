# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

puts "Cleaning database..."
Vote.destroy_all

puts "Creating addresses..."
csv_options = { col_sep: ';', headers: :first_row, header_converters: :symbol }
filepath    = 'app/assets/seed/votes.csv'

CSV.foreach(filepath, csv_options) do |row|
    next if row[:address].blank?
    Vote.create!( address: row[:address], zipcode: row[:zipcode], latitude: row[:latitude], longitude: row[:longitude], title: row[:title])
end

puts "Finished!"
