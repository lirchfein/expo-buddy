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

puts 'Creating expos ...'

User.create!(first_name: 'Our', last_name: 'Team', email: 'ourteam@lewagon.com', avatar: 'https://c.tribune.com.pk/2018/09/1815077-deadppol_insing-1538295729-229-640x480.jpg')

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

puts 'Creating exhibitors ...'


Exhibitor.create!(name: 'Acer', icon: 'https://www.designtagebuch.de/wp-content/uploads/mediathek//2011/04/acer-logo-600x300.png', location: 'Hall 12 / 108',
  description: 'Founded in 1976, today Acer is one of the world’s top ICT companies and has a presence in over 160 countries. As Acer looks into the future, it is focused on enabling a world where hardware, software and services will infuse with one another to open up new possibilities for consumers and businesses alike.',
  product_category: 'communication devices', expo_id: 1)

Exhibitor.create!(name: 'Acer', icon: 'https://www.designtagebuch.de/wp-content/uploads/mediathek//2011/04/acer-logo-600x300.png', location: 'Hall 12 / 108',
  description: 'Founded in 1976, today Acer is one of the world’s top ICT companies and has a presence in over 160 countries. As Acer looks into the future, it is focused on enabling a world where hardware, software and services will infuse with one another to open up new possibilities for consumers and businesses alike.',
  product_category: 'communication devices', expo_id: 2)

Exhibitor.create!(name: 'Acer', icon: 'https://www.designtagebuch.de/wp-content/uploads/mediathek//2011/04/acer-logo-600x300.png', location: 'Hall 12 / 108',
  description: 'Founded in 1976, today Acer is one of the world’s top ICT companies and has a presence in over 160 countries. As Acer looks into the future, it is focused on enabling a world where hardware, software and services will infuse with one another to open up new possibilities for consumers and businesses alike.',
  product_category: 'communication devices', expo_id: 3)

Exhibitor.create!(name: 'Acer', icon: 'https://www.designtagebuch.de/wp-content/uploads/mediathek//2011/04/acer-logo-600x300.png', location: 'Hall 12 / 108',
  description: 'Founded in 1976, today Acer is one of the world’s top ICT companies and has a presence in over 160 countries. As Acer looks into the future, it is focused on enabling a world where hardware, software and services will infuse with one another to open up new possibilities for consumers and businesses alike.',
  product_category: 'communication devices', expo_id: 4)

Exhibitor.create!(name: 'Acer', icon: 'https://www.designtagebuch.de/wp-content/uploads/mediathek//2011/04/acer-logo-600x300.png', location: 'Hall 12 / 108',
  description: 'Founded in 1976, today Acer is one of the world’s top ICT companies and has a presence in over 160 countries. As Acer looks into the future, it is focused on enabling a world where hardware, software and services will infuse with one another to open up new possibilities for consumers and businesses alike.',
  product_category: 'communication devices', expo_id: 5)

Exhibitor.create!(name: 'Schneider', icon: 'https://cdn.worldvectorlogo.com/logos/schneider-2.svg', location: 'Hall 9 / 107',
  description: 'Pioneer in the design of television sets in France, Schneider has been producing models with distinctive design and recognised quality for over 80 years. Since its creation, the brand has been committed to making technology accessible to everyone. ',
  product_category: 'Home Entertainment & VR', expo_id: 1)

Exhibitor.create!(name: 'Schneider', icon: 'https://cdn.worldvectorlogo.com/logos/schneider-2.svg', location: 'Hall 9 / 107',
  description: 'Pioneer in the design of television sets in France, Schneider has been producing models with distinctive design and recognised quality for over 80 years. Since its creation, the brand has been committed to making technology accessible to everyone. ',
  product_category: 'Home Entertainment & VR', expo_id: 2)

Exhibitor.create!(name: 'Schneider', icon: 'https://cdn.worldvectorlogo.com/logos/schneider-2.svg', location: 'Hall 9 / 107',
  description: 'Pioneer in the design of television sets in France, Schneider has been producing models with distinctive design and recognised quality for over 80 years. Since its creation, the brand has been committed to making technology accessible to everyone. ',
  product_category: 'Home Entertainment & VR', expo_id: 3)

Exhibitor.create!(name: 'Schneider', icon: 'https://cdn.worldvectorlogo.com/logos/schneider-2.svg', location: 'Hall 9 / 107',
  description: 'Pioneer in the design of television sets in France, Schneider has been producing models with distinctive design and recognised quality for over 80 years. Since its creation, the brand has been committed to making technology accessible to everyone. ',
  product_category: 'Home Entertainment & VR', expo_id: 4)

Exhibitor.create!(name: 'Schneider', icon: 'https://cdn.worldvectorlogo.com/logos/schneider-2.svg', location: 'Hall 9 / 107',
  description: 'Pioneer in the design of television sets in France, Schneider has been producing models with distinctive design and recognised quality for over 80 years. Since its creation, the brand has been committed to making technology accessible to everyone. ',
  product_category: 'Home Entertainment & VR', expo_id: 5)

Exhibitor.create!(name: 'Arte', icon: 'https://banner2.kisspng.com/20180715/qrr/kisspng-bury-me-my-love-arte-france-logo-force-de-proposition-5b4afdbcaa3843.2003927015316412766972.jpg', location: 'Hall 2.2 / 103',
  description: 'ARTE - leading channel of European Culture',
  product_category: 'TV', expo_id: 1)

Exhibitor.create!(name: 'Arte', icon: 'https://banner2.kisspng.com/20180715/qrr/kisspng-bury-me-my-love-arte-france-logo-force-de-proposition-5b4afdbcaa3843.2003927015316412766972.jpg', location: 'Hall 2.2 / 103',
  description: 'ARTE - leading channel of European Culture',
  product_category: 'TV', expo_id: 2)

Exhibitor.create!(name: 'Arte', icon: 'https://banner2.kisspng.com/20180715/qrr/kisspng-bury-me-my-love-arte-france-logo-force-de-proposition-5b4afdbcaa3843.2003927015316412766972.jpg', location: 'Hall 2.2 / 103',
  description: 'ARTE - leading channel of European Culture',
  product_category: 'TV', expo_id: 3)

Exhibitor.create!(name: 'Arte', icon: 'https://banner2.kisspng.com/20180715/qrr/kisspng-bury-me-my-love-arte-france-logo-force-de-proposition-5b4afdbcaa3843.2003927015316412766972.jpg', location: 'Hall 2.2 / 103',
  description: 'ARTE - leading channel of European Culture',
  product_category: 'TV', expo_id: 4)

Exhibitor.create!(name: 'Arte', icon: 'https://banner2.kisspng.com/20180715/qrr/kisspng-bury-me-my-love-arte-france-logo-force-de-proposition-5b4afdbcaa3843.2003927015316412766972.jpg', location: 'Hall 2.2 / 103',
  description: 'ARTE - leading channel of European Culture',
  product_category: 'TV', expo_id: 5)

Exhibitor.create!(name: 'Samsung', icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Samsung_Logo.svg/1280px-Samsung_Logo.svg.png', location: 'Hall A CityCube / 102',
  description: 'Samsung Electronics inspires the world and shapes the future with transformative ideas and technologies that give people the power to discover new experiences.',
  product_category: 'communication devices', expo_id: 1)

Exhibitor.create!(name: 'Samsung', icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Samsung_Logo.svg/1280px-Samsung_Logo.svg.png', location: 'Hall A CityCube / 102',
  description: 'Samsung Electronics inspires the world and shapes the future with transformative ideas and technologies that give people the power to discover new experiences.',
  product_category: 'communication devices', expo_id: 2)

Exhibitor.create!(name: 'Samsung', icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Samsung_Logo.svg/1280px-Samsung_Logo.svg.png', location: 'Hall A CityCube / 102',
  description: 'Samsung Electronics inspires the world and shapes the future with transformative ideas and technologies that give people the power to discover new experiences.',
  product_category: 'communication devices', expo_id: 3)

Exhibitor.create!(name: 'Samsung', icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Samsung_Logo.svg/1280px-Samsung_Logo.svg.png', location: 'Hall A CityCube / 102',
  description: 'Samsung Electronics inspires the world and shapes the future with transformative ideas and technologies that give people the power to discover new experiences.',
  product_category: 'communication devices', expo_id: 4)

Exhibitor.create!(name: 'Samsung', icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Samsung_Logo.svg/1280px-Samsung_Logo.svg.png', location: 'Hall A CityCube / 102',
  description: 'Samsung Electronics inspires the world and shapes the future with transformative ideas and technologies that give people the power to discover new experiences.',
  product_category: 'communication devices', expo_id: 5)

Exhibitor.create!(name: 'Toshiba', icon: 'https://www.cpro.fr/wp-content/uploads/2018/07/Toshiba-logo.png', location: 'Hall 17 / 104',
  description: 'Toshiba Electronics Europe GmbH (TEE) is the European electronic components business of Toshiba Electronic Devices and Storage Corporation. TEE offers European consumers and businesses a wide variety of innovative hard disk drive (HDD) products plus semiconductor solutions for automotive, industrial, IoT, motion control, telecoms, networking, consumer and white goods applications. ',
  product_category: 'Home Entertainment & VR', expo_id: 1)

Exhibitor.create!(name: 'Toshiba', icon: 'https://www.cpro.fr/wp-content/uploads/2018/07/Toshiba-logo.png', location: 'Hall 17 / 104',
  description: 'Toshiba Electronics Europe GmbH (TEE) is the European electronic components business of Toshiba Electronic Devices and Storage Corporation. TEE offers European consumers and businesses a wide variety of innovative hard disk drive (HDD) products plus semiconductor solutions for automotive, industrial, IoT, motion control, telecoms, networking, consumer and white goods applications. ',
  product_category: 'Home Entertainment & VR', expo_id: 2)

Exhibitor.create!(name: 'Toshiba', icon: 'https://www.cpro.fr/wp-content/uploads/2018/07/Toshiba-logo.png', location: 'Hall 17 / 104',
  description: 'Toshiba Electronics Europe GmbH (TEE) is the European electronic components business of Toshiba Electronic Devices and Storage Corporation. TEE offers European consumers and businesses a wide variety of innovative hard disk drive (HDD) products plus semiconductor solutions for automotive, industrial, IoT, motion control, telecoms, networking, consumer and white goods applications. ',
  product_category: 'Home Entertainment & VR', expo_id: 3)

Exhibitor.create!(name: 'Toshiba', icon: 'https://www.cpro.fr/wp-content/uploads/2018/07/Toshiba-logo.png', location: 'Hall 17 / 104',
  description: 'Toshiba Electronics Europe GmbH (TEE) is the European electronic components business of Toshiba Electronic Devices and Storage Corporation. TEE offers European consumers and businesses a wide variety of innovative hard disk drive (HDD) products plus semiconductor solutions for automotive, industrial, IoT, motion control, telecoms, networking, consumer and white goods applications. ',
  product_category: 'Home Entertainment & VR', expo_id: 4)

Exhibitor.create!(name: 'Toshiba', icon: 'https://www.cpro.fr/wp-content/uploads/2018/07/Toshiba-logo.png', location: 'Hall 17 / 104',
  description: 'Toshiba Electronics Europe GmbH (TEE) is the European electronic components business of Toshiba Electronic Devices and Storage Corporation. TEE offers European consumers and businesses a wide variety of innovative hard disk drive (HDD) products plus semiconductor solutions for automotive, industrial, IoT, motion control, telecoms, networking, consumer and white goods applications. ',
  product_category: 'Home Entertainment & VR', expo_id: 5)

puts 'Done !'
