# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Skill.destroy_all
Course.destroy_all
Location.destroy_all


8.times do
    User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    password: Faker::Internet.password(4, 8),
    email: Faker::Internet.email,
    bio: Faker::MostInterestingManInTheWorld.quote,
    credentials: Faker::Educator.course,
    age: Faker::Number.between(18, 150),
    profile_pic: Faker::Placeholdit.image("150x150")
    )
  end

10.times do
    Skill.create(
    name: Faker::ProgrammingLanguage.name,
    creator: Faker::ProgrammingLanguage.creator,
    content: Faker::Lorem.paragraph,
    img_url: Faker::Placeholdit.image("100x100") 
    )
end

10.times do
    Location.create(
    name: Faker::Robin.quote,
    description: Faker::Lorem.paragraph,
    img_url: Faker::Placeholdit.image("100x100") 
    )
end

7.times do
    course = Course.create(
    name: Faker::Robin.quote,
    description: Faker::Lorem.paragraph,
    start_date: Faker::Date.forward(40),
    end_date: Faker::Date.between_except(50.days.from_now, 1.year.from_now, Date.today),
    teacher_id: Faker::Number.between(1, 3),
    skill_id: Faker::Number.between(1, 10),
    location_id: Faker::Number.between(1, 10),
    img_url: Faker::Placeholdit.image("100x100")
    )
end


