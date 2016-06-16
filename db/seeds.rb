5.times do
  User.create!(
    email:    Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
end
users = User.all

15.times do
  Item.create!(
    name: Faker::StarWars.quote,
    user: users.sample,
  )
end


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"