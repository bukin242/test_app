# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  AdminUser.destroy_all
  User.destroy_all
  UserTest.destroy_all
  UserCourse.destroy_all

  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

  (1..9).each do |n|
    User.create!(email: "user#{n}@example.com", password: n.to_s * 6, password_confirmation: n.to_s * 6)
    UserTest.create!(name: "Test #{n}", description: "Description #{n}")
    UserCourse.create!(name: "Course #{n}", description: "Description #{n}")
  end

  User.all.each do |user|
    user.add_tests UserTest.pluck(:id).sample(rand(1..9))
    user.add_courses UserCourse.pluck(:id).sample(rand(1..9))
  end
end
