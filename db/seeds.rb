Booking.destroy_all
puts "destroy all b"
Tent.destroy_all
puts "destroy all t"


user1 = User.create(first_name: "Louis", last_name: "Dupont", email: "louis.dupont@gmail.com", password: "password", pseudo: "louis", gender: "male")
user2 = User.create(first_name: "Nicolas", last_name: "Dupont", email: "nicolas.dupont@gmail.com", password: "password", pseudo: "nicolas", gender: "male")
user3 = User.create(first_name: "Chris", last_name: "Dupont", email: "chris.dupont@gmail.com", password: "password", pseudo: "chris", gender: "male")


puts 'Creating first fake tents...'
  file = URI.open("https://images.unsplash.com/photo-1478827536114-da961b7f86d2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dGVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60")
  tent = Tent.new(
    name:    "Tent'Attion",
    number_of_couch: rand(1..9),
    season: "spring/summer",
    weight:  rand(1..6),
    user_id: user1.id
  )
  tent.photo.attach(io: file, filename: '1nes.png', content_type: 'image/png')
  tent.save!



  puts 'Creating second fake tents...'
  file = URI.open("https://images.unsplash.com/photo-1470246973918-29a93221c455?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dGVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60")
  tent = Tent.new(
    name:    "Tent'inn",
    number_of_couch: rand(1..9),
    season: "fall/winter",
    weight:  rand(1..6),
    user_id: user1.id
  )
  tent.photo.attach(io: file, filename: '2nes.png', content_type: 'image/png')
  tent.save!


  puts 'Creating third fake tents...'
  file = URI.open("https://images.unsplash.com/photo-1605620622858-ea62b0a2059c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dGVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60")
  tent = Tent.new(
    name:    "Tent'emon",
    number_of_couch: rand(1..9),
    season: "4seasons",
    weight:  rand(1..6),
    user_id: user2.id
  )
  tent.photo.attach(io: file, filename: '4nes.png', content_type: 'image/png')
  tent.save!


  puts 'Creating fourth fake tents...'
  file = URI.open("https://images.unsplash.com/photo-1565674484371-a90094649d30?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dGVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60")
  tent = Tent.new(
    name:    "Tent'ure",
    number_of_couch: rand(1..9),
    season: "spring/summer",
    weight:  rand(1..6),
    user_id: user2.id
  )
  tent.photo.attach(io: file, filename: '5nes.png', content_type: 'image/png')
  tent.save!


  puts 'Creating fifth fake tents...'
  file = URI.open("https://images.unsplash.com/photo-1605673832409-27740763111a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHRlbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60")
  tent = Tent.new(
    name:    "Tent'adédé",
    number_of_couch: rand(1..9),
    season: "4seasons",
    weight:  rand(1..6),
    user_id: user2.id
  )
  tent.photo.attach(io: file, filename: '6nes.png', content_type: 'image/png')
  tent.save!



  puts 'Creating sixth fake tents...'
  file = URI.open("https://images.unsplash.com/photo-1555891554-3ad18aa1875a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHRlbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60")
  tent = Tent.new(
    name:    "Tent'oDD",
    number_of_couch: rand(1..9),
    season: "fall/winter",
    weight:  rand(1..6),
    user_id: user3.id
  )
  tent.photo.attach(io: file, filename: '7nes.png', content_type: 'image/png')
  tent.save!




  puts 'Creating seventh fake tents...'
  file = URI.open("https://images.unsplash.com/photo-1570787090256-f4ada0eca928?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHRlbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60")
  tent = Tent.new(
    name:    "Tent'aculaire",
    number_of_couch: rand(1..9),
    season: "spring/summer",
    weight:  rand(1..6),
    user_id: user3.id
  )
  tent.photo.attach(io: file, filename: '8nes.png', content_type: 'image/png')
  tent.save!




  puts 'Creating eighth fake tents...'
  file = URI.open("https://images.unsplash.com/photo-1598279692889-6a59d577f9bd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHRlbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60")
  tent = Tent.new(
    name:    "Tent'fastlife",
    number_of_couch: rand(1..9),
    season: "4seasons",
    weight:  rand(1..6),
    user_id: user3.id
  )
  tent.photo.attach(io: file, filename: '9nes.png', content_type: 'image/png')
  tent.save!




  puts 'Creating nineth fake tents...'
  file = URI.open("https://images.unsplash.com/photo-1547919144-08fd4d3a6224?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHRlbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60")
  tent = Tent.new(
    name:    "Tent'ochaud",
    number_of_couch: rand(1..9),
    season: "fall/winter",
    weight:  rand(1..6),
    user_id: user3.id
  )
  tent.photo.attach(io: file, filename: '10nes.png', content_type: 'image/png')
  tent.save!




  puts 'Creating tenth fake tents...'
  file = URI.open("https://images.unsplash.com/photo-1581512887870-297f872fdbd4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHRlbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60")
  tent = Tent.new(
    name:    "Tent'forAll",
    number_of_couch: rand(1..9),
    season: "4seasons",
    weight:  rand(1..6),
    user_id: user2.id
  )
  tent.photo.attach(io: file, filename: '11nes.png', content_type: 'image/png')
  tent.save!
puts 'Finished!'
