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
Picture.destroy_all

puts 'Creating users ...'

User.create!(first_name: 'Our', last_name: 'Team', email: 'ourteam@lewagon.com', password: '111222',
  avatar: 'https://c.tribune.com.pk/2018/09/1815077-deadppol_insing-1538295729-229-640x480.jpg')

puts 'Creating expos ...'

Expo.create!(name: 'IFA', start_date: '06/09/2019', end_date: '11/09/2019',
  cover_pic: 'https://res.cloudinary.com/dfcud6por/image/upload/v1543918937/expo-buddy/expo-covers/IFA_4.png',
  exhibitors_num: 1814, visitors_num: 253000, square_meters: 161200,
  # description: 'IFA 2018 has not only hosted more innovation and product launches than any previous event, it also presented more digital lifestyle products in one place than any other show worldwide.',
  city: 'Berlin',  address: 'Messegelände Berlin ExpoCenter City Messedamm 22 14055 Berlin')

Expo.create!(name: 'MWC', start_date: '25/02/2019', end_date: '28/02/2019',
  cover_pic: 'https://res.cloudinary.com/dfcud6por/image/upload/v1543920179/expo-buddy/expo-covers/MWC5.jpg',
  exhibitors_num: 2400, visitors_num: 100, square_meters: 124000,
  # description: 'Over 2,400 companies gathered in Barcelona to showcase the newest technologies and most innovative products available. Take your place among the companies that are shaping the connected future.',
  city: 'Barcelona',  address: "Av. Joan Carles I, 64, 08908 L'Hospitalet de Llobregat, Barcelona, Spain")

Expo.create!(name: 'Gamescom', start_date: '19/08/2019', end_date: '24/08/2019',
  cover_pic: 'https://res.cloudinary.com/dfcud6por/image/upload/v1543926921/expo-buddy/expo-covers/Gamescom4.jpg',
  exhibitors_num: 3910, visitors_num: 170000, square_meters: 100000,
  # description: "Owned and produced by the Consumer Technology Association (CTA), it attracts the world's business leaders and pioneering thinkers.",
  city: 'Cologne',  address: 'Messepl. 1, 50679 Köln')

Expo.create!(name: 'E3', start_date: '11/05/2019', end_date: '13/05/2019',
  cover_pic: 'https://res.cloudinary.com/dfcud6por/image/upload/v1543926569/expo-buddy/expo-covers/E3-1.jpg',
  exhibitors_num: 2800, visitors_num: 120000, square_meters: 140000,
  # description: 'Business, leads and ideas: The triad of exhibits, conference and networking event provides a 360-degree view of digitization. For companies, administration and society CEBIT is the most important event of its kind in Europe.',
  city: 'Los Angeles',  address: 'Los Angeles Convention Center, 1201 S Figueroa St, Los Angeles, CA 90015, USA')

Expo.create!(name: 'Computex', start_date: '28/05/2019', end_date: '01/06/2019',
  cover_pic: 'https://res.cloudinary.com/dfcud6por/image/upload/v1543926799/expo-buddy/expo-covers/Computex7.jpg',
  exhibitors_num: 2600, visitors_num: 123000, square_meters: 3500,
  # description: 'COMPUTEX, one of the leading global ICT, IoT & Startup trade shows offering a complete ICT supply chain and IoT ecosystems, will return next year from May 28 – June 1, 2019, as a bigger and better show.',
  city: 'Taipei',  address: '5th Floor, 333 Keelung Road, Section 1 New Taipei City')

puts 'Seed complete!'
puts 'Please run the following task: <<<< rake scraper:exhibitors >>>> to create exhibitors!'
puts 'Please run the following task: <<<< rake temp:pictures >>>> to create pictures!'


