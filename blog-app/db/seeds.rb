# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'byebug'
require 'ffaker'

(0..9).each do |n|
  author = FFaker::Name.name
  article = FFaker::Lorem.paragraph
  puts "#{n} author: #{author} => #{article} \n\n"
  Post.create(author: author, article: article)
end
