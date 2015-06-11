# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([{ name: 'Isaac', karma: 230}, { name: 'Ben', karma: 229},{ name: 'Rebecca', karma: 200},{ name: 'Jacob', karma: 200}])
categories = Category.create([{name: 'funny'},{name: 'jokes'},{name: 'iama'}])
stories = Story.create([{ title: 'uno', body: 'dos', url: 'tres', user_id: 1, category_id: 2},{ title: 'seis', body: 'siete', url: 'ocho', user_id: 2, category_id: 3}])
