namespace :temp do
  desc "Add pictures to the seed"
  task pictures: :environment do
     puts "Creating pictures ..."

Picture.create!(pic: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542985221/Guardians/hj5hrpmg3nl8mfxheqn5.jpg',
  user_id: User.first.id, exhibitor_id: Exhibitor.first.id)

Picture.create!(pic: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542919883/Guardians/ctk3rt27rgc5krxp0b94.jpg',
  user_id: User.first.id, exhibitor_id: Exhibitor.first.id + 1)

Picture.create!(pic: 'https://res.cloudinary.com/dfcud6por/image/upload/v1542812370/Guardians/deadpool-1200x675.jpg',
  user_id: User.first.id, exhibitor_id: Exhibitor.first.id + 2)
  end
end
