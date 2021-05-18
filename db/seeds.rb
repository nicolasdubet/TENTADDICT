require 'faker'
Tent.destroy_all

puts 'Creating fake tents...'
25.times do
  tent = Tent.new(
    name:    Faker::Sports::Football.team,
    number_of_couch: rand(1..10),
    season: "spring/summer",
    weight:  rand(1..7),
  )
  tent.save!
end

25.times do
    tent = Tent.new(
      name:    Faker::Sports::Football.team,
      number_of_couch: rand(1..10),
      season: "fall/winter",
      weight:  rand(1..7),
    )
    tent.save!
end

25.times do
    tent = Tent.new(
      name:    Faker::Sports::Football.team,
      number_of_couch: rand(1..10),
      season: "4seasons",
      weight:  rand(1..7),
    )
    tent.save!
end


puts 'Finished!'
