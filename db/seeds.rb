# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Post.destroy_all

puts "Creating Admin"
# ActiveRecord::Base.connection.reset_sequence!(Post.table_name)
# ActiveRecord::Base.connection.reset_sequence!(User.table_name)

# user_email = "sample@email.com"

admin = User.create!(
  email: "sample@email.com",
  password: 123123,
  username: "admin_test",
  admin: true
)

puts "creating posts..."
10.times do
  post = Post.new(
    title: Faker::Hobby.activity,
    content: Faker::Lorem.paragraph(sentence_count: 6),
    date: Faker::Time.backward(days: 360, period: :morning, format: :long),
    user: admin,
    blurb: Faker::Fantasy::Tolkien.poem
  )
  post.save!
end
