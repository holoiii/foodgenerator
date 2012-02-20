# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w[Banana Apple Orange Pear Pizza Coffee Sandwich].each do |item|
  Food.create(name: item, cost: rand(10), servings: rand(3), calories: rand(10) * 100, vegetarian: rand(2) == 1)
end
