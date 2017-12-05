Faker::Config.locale = :ja

30.times do |n|
  name = Faker::Address.community
  postal_code = Faker::Address.postcode
  region = Faker::Address.state
  address = Faker::Address.street_address
  start_time = "0900"
  close_time = "2100"
  hot_water = "ある"
  female_only = "わからない"
  rental_stroller = "ない"
  baby_chair = "わからない"
  kids_space = "わからない"
  microwave = "ある"
  sink = "ある"
  diapers_trash_bin = "なし"
  diaper_stand = "ある"
  baby_scales = "わからない"
  memo = Faker::Lorem.sentence

  Spot.create!(
                name: name,
                postal_code: postal_code,
                region: region,
                address: address,
                start_time: start_time,
                close_time: close_time,
                hot_water: hot_water,
                female_only: female_only,
                rental_stroller: rental_stroller,
                baby_chair: baby_chair,
                kids_space: kids_space,
                microwave: microwave,
                sink: sink,
                diapers_trash_bin: diapers_trash_bin,
                diaper_stand: diaper_stand,
                baby_scales: baby_scales,
                memo: memo
              )

end
