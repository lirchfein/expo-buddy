# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Expo.destroy_all
Exhibitor.destroy_all

puts 'Creating users ...'

User.create!(first_name: 'Our', last_name: 'Team', email: 'ourteam@lewagon.com', password: '111222',
  avatar: 'https://c.tribune.com.pk/2018/09/1815077-deadppol_insing-1538295729-229-640x480.jpg')

puts 'Creating expos ...'

Expo.create!(name: 'IFA', start_date: '06/09/2019', end_date: '11/09/2019',
  cover_pic: 'https://res.cloudinary.com/dfcud6por/image/upload/v1543315786/expo-buddy/header_ifa.png',
  exhibitors_num: 1814, visitors_num: 100, square_meters: 161200,
  # description: 'IFA 2018 has not only hosted more innovation and product launches than any previous event, it also presented more digital lifestyle products in one place than any other show worldwide.',
  city: 'Berlin',  address: 'Messegelände Berlin ExpoCenter City Messedamm 22 14055 Berlin')

Expo.create!(name: 'MWC', start_date: '25/02/2019', end_date: '28/02/2019',
  cover_pic: 'http://webershandwickseattle.com/wp-content/uploads/2012/03/MWC-logo.png',
  exhibitors_num: 2400, visitors_num: 100, square_meters: 124000,
  # description: 'Over 2,400 companies gathered in Barcelona to showcase the newest technologies and most innovative products available. Take your place among the companies that are shaping the connected future.',
  city: 'Barcelona',  address: "Av. Joan Carles I, 64, 08908 L'Hospitalet de Llobregat, Barcelona, Spain")

Expo.create!(name: 'CES', start_date: '08/01/2019', end_date: '12/01/2019',
  cover_pic: 'https://www.ces.tech/CES/media/logos-and-icons/CES-Logo_696x401.png',
  exhibitors_num: 3910, visitors_num: 170000, square_meters: 100000,
  # description: "Owned and produced by the Consumer Technology Association (CTA), it attracts the world's business leaders and pioneering thinkers.",
  city: 'Las Vegas',  address: 'Las Vegas Convention Center 3150 Paradise Rd Las Vegas NV, 89109')

Expo.create!(name: 'CEBIT', start_date: '24/06/2019', end_date: '28/09/2019',
  cover_pic: 'https://www.univention.de/wp-content/uploads/2018/05/Cebit-2018-Logo.png',
  exhibitors_num: 2800, visitors_num: 120000, square_meters: 140000,
  # description: 'Business, leads and ideas: The triad of exhibits, conference and networking event provides a 360-degree view of digitization. For companies, administration and society CEBIT is the most important event of its kind in Europe.',
  city: 'Hannover',  address: 'Deutsche Messe, Messegelände, 30521 Hannover, Germany')

Expo.create!(name: 'Computex', start_date: '28/05/2019', end_date: '01/06/2019',
  cover_pic: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Computex_Taipei_logo_since_2010.svg/2000px-Computex_Taipei_logo_since_2010.svg.png',
  exhibitors_num: 2600, visitors_num: 123000, square_meters: 3500,
  # description: 'COMPUTEX, one of the leading global ICT, IoT & Startup trade shows offering a complete ICT supply chain and IoT ecosystems, will return next year from May 28 – June 1, 2019, as a bigger and better show.',
  city: 'Taipei',  address: '5th Floor, 333 Keelung Road, Section 1 New Taipei City')

puts 'Seed complete!'
puts 'Please run the following task: <<<< rake scraper:exhibitors >>>> to create exhibitors!'
