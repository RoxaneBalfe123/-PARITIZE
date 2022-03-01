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

# science = %w( AstraZeneca GSK Bayer Merck Roche)

# technology = %w(Facebook Google Twitter)

# engineering = %w(SpaceX, Tesla, Siemens)

# maths = %w(EDF_Energy Boeing Rolls_Royce)

location = %w(London Califonia Berlin Paris)

size = %w(small medium large)

user = User.create!(
  email: "user2@email.com",
  password: "123456"
  # confirm_password: "123456"
)

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731862/astrazeneca_jxzwhh.png')
  astra_zeneca = Company.new(
    company_name: "AstraZeneca",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "AstraZeneca Plc (AstraZeneca) is a biopharmaceutical
    company, which discovers, produces and commercializes a wide range of prescription
    drugs. It focuses on therapy areas such as respiratory; cardiovascular, renal and
    metabolic diseases; and cancer, besides autoimmune, infection and neurological diseases."
  )

astra_zeneca.photo.attach(io: file, filename: 'astrazeneca_jxzwhh.png', content_type: 'image/png')
astra_zeneca.user_id = user.id
astra_zeneca.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731862/gsk_q6awrt.png')
  gsk = Company.new(
    company_name: "GSK",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "GlaxoSmithKline PLC is a global healthcare company.
    The Company researches and develops a range of products in three primary
    areas: Pharmaceuticals, Vaccines and Consumer Healthcare."
  )

gsk.photo.attach(io: file, filename: 'gsk_q6awrt.png', content_type: 'image/png')
gsk.user_id = user.id
gsk.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731862/bayer_qudgqa.png')
  bayer = Company.new(
    company_name: "bayer",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "Bayer is a Life Science company with a more than 150-year
    history and core competencies in the areas of health care and agriculture. With
    our innovative products, we are contributing to finding solutions to some of the
    major challenges of our time."
  )

bayer.photo.attach(io: file, filename: 'bayer_qudgqa', content_type: 'image/png')
bayer.user_id = user.id
bayer.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731862/merck_tbwmyp.png')
  merck = Company.new(
    company_name: "Merck",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "Merck & Co. manufactures a variety of well-known
    pharmaceutical drugs, vaccines and animal-health products. It made the first
    smallpox vaccine for commercial use in the U.S. It is also the maker of the
    painkiller Vioxx and the HPV vaccine Gardasil."
  )

merck.photo.attach(io: file, filename: 'merck_tbwmyp.png', content_type: 'image/png')
merck.user_id = user.id
merck.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731863/roche_xnrlgh.png')
  roche = Company.new(
    company_name: "Roche",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "Headquartered in Basel, Switzerland, Roche is a leader
    in research-focused healthcare with combined strengths in pharmaceuticals and
    diagnostics. Roche is the world's largest biotech company, with truly differentiated
    medicines in oncology, immunology, infectious diseases, ophthalmology and neuroscience."
  )

roche.photo.attach(io: file, filename: 'roche_xnrlgh.png', content_type: 'image/png')
roche.user_id = user.id
roche.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731862/facebook_nyiok4.png')
  facebook = Company.new(
    company_name: "Facebook",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "Facebook is a website which allows users, who sign-up for free profiles,
    to connect with friends, work colleagues or people they don't know, online.
    It allows users to share pictures, music, videos, and articles, as well as
    their own thoughts and opinions with however many people they like."
  )

facebook.photo.attach(io: file, filename: 'facebook_nyiok4.png', content_type: 'image/png')
facebook.user_id = user.id
facebook.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731862/google_rwfzvl.png')
  google = Company.new(
    company_name: "Google",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "Google is an American company that is most commonly
     known as a search engine. Although the company made it's name as a search engine,
     and the vast majority of its income comes from advertising because of this,
     it has branched out into a number of areas such as cloud computing, software and hardware."
  )

google.photo.attach(io: file, filename: 'google_rwfzvl.png', content_type: 'image/png')
google.user_id = user.id
google.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731862/twitter_qb63cp.png')
  twitter = Company.new(
    company_name: "Twitter",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "Twitter is known as a micro-blogging site. Blogging has
    been around for some time. Usually blogging consists of people setting up basic
    websites where they write about whatever they want, whether it be politics, sport,
    cooking, fashion etc."
  )

twitter.photo.attach(io: file, filename: 'twitter_qb63cp.png', content_type: 'image/png')
twitter.user_id = user.id
twitter.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731863/space_x_hbmydy.png')
  spacex = Company.new(
    company_name: "SpaceX",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "SpaceX was formed by entrepreneur Elon Musk in the hopes
    of revolutionizing the aerospace industry and making affordable spaceflight a
    reality. The company entered the arena with the Falcon 1 rocket, a two-stage
    liquid-fueled craft designed to send small satellites into orbit."
  )

spacex.photo.attach(io: file, filename: 'space_x_hbmydy.png', content_type: 'image/png')
spacex.user_id = user.id
spacex.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731862/tesla_icwlzv.png')
  tesla = Company.new(
    company_name: "Tesla",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "Best described as a battery company, Tesla is best known
    for its electric cars. The company is also known for specialising in solar panels
    and Lithium-ion battery energy storage. The company first gained attention following
    the 2008 release of the Tesla Roadster, the very first electric sports car."
  )

tesla.photo.attach(io: file, filename: 'tesla_icwlzv.png', content_type: 'image/png')
tesla.user_id = user.id
tesla.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731863/siemens_rleboh.png')
  siemens = Company.new(
    company_name: "Siemens",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "Siemens Limited is a technology company focused on industry,
    infrastructure, digital transformation, transport as well as transmission and generation
    of electrical power. It is the flagship listed company of Siemens AG in India."
  )

siemens.photo.attach(io: file, filename: 'siemens_rleboh.png', content_type: 'image/png')
siemens.user_id = user.id
siemens.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731862/edf_u7rpi8.png')
  edf_energy = Company.new(
    company_name: "Edf_Energy",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "EDF Energy is a British integrated energy company, wholly
    owned by the French state owned EDF (Électricité de France), with operations spanning
    electricity generation and the sale of natural gas and electricity to homes and businesses
    throughout the United Kingdom."
  )

edf_energy.photo.attach(io: file, filename: 'edf_u7rpi8.png', content_type: 'image/png')
edf_energy.user_id = user.id
edf_energy.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731862/boeing_eggbwo.png')
  boeing = Company.new(
    company_name: "Boeing",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "Boeing is the world's largest aerospace company and leading
    manufacturer of commercial jetliners, defense, space and security systems, and service
    provider of aftermarket support."
  )

boeing.photo.attach(io: file, filename: 'boeing_eggbwo.png', content_type: 'image/png')
boeing.user_id = user.id
boeing.save!

file = URI.open('https://res.cloudinary.com/dqpmvek08/image/upload/v1645731863/rolls_royce_i073x2.png')
  rolls_royce = Company.new(
    company_name: "Rolls_royce",
    type_of_company: type.sample,
    company_size: size.sample,
    women_c_level: rand(1..100),
    men_c_level: rand(1..100),
    women_mid_senior_level: rand(1..100),
    men_mid_senior_level: rand(1..100),
    women_junior_level: rand(1..100),
    men_junior_level: rand(1..100),
    hq_location: location.sample,
    company_description: "Rolls-Royce is the world's leading supplier of marine
    propulsion equipment. Its products and services range from complete ship design
    to integrated propulsion, maneuvering, and positioning systems and deck machinery."
  )

rolls_royce.photo.attach(io: file, filename: 'rolls_royce_i073x2', content_type: 'image/png')
rolls_royce.user_id = user.id
rolls_royce.save!

puts "created alot of companies"
