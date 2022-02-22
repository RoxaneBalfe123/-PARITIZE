# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
puts "clean DB"
Companies.destroy_all
Bookmarks.destroy_all

puts "lets create some companies"

type = %w(science technology engineering maths)

# science = %w( AstraZeneca GSK_Bayer Merck Roche)

# technology = %w(Facebook Google Twitter)

# engineering = %w(SpaceX, Tesla, Siemens)

# maths = %w(EDF_Energy Boeing Rolls_Royce)

location = %w(London Califonia Berlin Paris)

size = %w(Small Medium Large)


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

  astra_zeneca.photo.attach(io: file, filename: 'AstraZeneca.png', content_type: 'image/png')
  astra_zeneca.save!

file = URI.open('https://1000logos.net/gmail-logo/')
  bayer = Company.new(
    company_name: "GSK_Bayer",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..10),
    men_c_level: rand(1..10),
    women_mid_senior_level: rand(1..10),
    men_mid_senior_level: rand(1..10),
    women_junior_level: rand(1..10),
    men_junior_level: rand(1..10),
    hq_location: location.sample,
    company_description: "We are the world's largest vaccines company by revenue, delivering vaccines that help protect people at all stages of life. Our R&D focuses on developing vaccines against infectious diseases that combine high medical need and strong market potential."
  )

  bayer.photo.attach(io: file, filename: 'GSK_Bayer.png', content_type: 'image/png')
  bayer.save!

file = URI.open('https://1000logos.net/gmail-logo/')
  merck = Company.new(
    company_name: "Merck Roche",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..10),
    men_c_level: rand(1..10),
    women_mid_senior_level: rand(1..10),
    men_mid_senior_level: rand(1..10),
    women_junior_level: rand(1..10),
    men_junior_level: rand(1..10),
    hq_location: location.sample,
    company_description: "Roche is the world's largest biotech company with truly differentiated medicines in oncology, virology, inflammation, metabolism and CNS. ... Roche's personalised healthcare strategy aims at providing medicines and diagnostic tools that enable tangible improvements in the health, quality of life and survival of patients."
  )

  merck.photo.attach(io: file, filename: 'merck Roche.png', content_type: 'image/png')
  merck.save!

file = URI.open('https://1000logos.net/gmail-logo/')
    facebook = Company.new(
    company_name: "Facebook",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..10),
    men_c_level: rand(1..10),
    women_mid_senior_level: rand(1..10),
    men_mid_senior_level: rand(1..10),
    women_junior_level: rand(1..10),
    men_junior_level: rand(1..10),
    hq_location: location.sample,
    company_description: "Facebook is a website which allows users, who sign-up for free profiles, to connect with friends, work colleagues or people they don't know, online. It allows users to share pictures, music, videos, and articles, as well as their own thoughts and opinions with however many people they like."
  )

  facebook.photo.attach(io: file, filename: 'facebook.png', content_type: 'image/png')
  facebook.save!

  puts "finished crreating the companies"
