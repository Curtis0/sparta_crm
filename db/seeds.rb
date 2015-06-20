# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create(name: "スパルタ商事", url: "http://spartarails.com", address: "東京")
Company.create(name: "英語だよ", url: "http://eigodayo.com", address: "神奈川")
Company.create(name: "アメージング社", url: "http://amazingcompany.com", address: "大阪")

100.times do |index|
Customer.create(
  family_name: Faker::Japanese::Name.last_name,
  given_name: Faker::Japanese::Name.first_name,
  email_string: "example_#{index}@test.com",
  company_id: rand(3) + 1
  )
end
