# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

99.times do |i|
  username = "example#{i}"
  email = Faker::Internet.email
  password = "foobar!#{i}"
  picture = Faker::Avatar.image(nil, "50x50")
  user = User.create!(username: username,
                email: email,
                password: password,
                picture_url: picture)
  10.times do
    Post.create(title: Faker::Lorem.sentence,
            content: Faker::Lorem.paragraph(2),
            user_id: user.id)
  end
end
