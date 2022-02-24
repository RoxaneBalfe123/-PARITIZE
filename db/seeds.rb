# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
puts "clean DB"
User.destroy_all
Company.destroy_all
Bookmark.destroy_all

puts "lets create some companies"

type = %w(science technology engineering math)

# science = %w( AstraZeneca GSK_Bayer Merck Roche)

# technology = %w(Facebook Google Twitter)

# engineering = %w(SpaceX, Tesla, Siemens)

# maths = %w(EDF_Energy Boeing Rolls_Royce)

location = %w(London Califonia Berlin Paris)

size = %w(small medium large)

user = User.create!(
  email: "user2@email.com",
  password: "123456",
  # confirm_password: "123456"
)

file = URI.open('https://1000logos.net/gmail-logo/')
  astra_zeneca = Company.new(
    company_name: "AstraZeneca",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..10),
    men_c_level: rand(1..10),
    women_mid_senior_level: rand(1..10),
    men_mid_senior_level: rand(1..10),
    women_junior_level: rand(1..10),
    men_junior_level: rand(1..10),
    hq_location: location.sample,
    company_description: "AstraZeneca Plc (AstraZeneca) is a biopharmaceutical company, which discovers, produces and commercializes a wide range of prescription drugs. It focuses on therapy areas such as respiratory; cardiovascular, renal and metabolic diseases; and cancer, besides autoimmune, infection and neurological diseases."
  )

  # astra_zeneca.photo.attach(io: file, filename: 'AstraZeneca.png', content_type: 'image/png')
  astra_zeneca.user_id = user.id
  astra_zeneca.save!
