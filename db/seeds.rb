Faker::Config.locale = :ja

30.times do |n|
  name = Faker::Address.community
  postal_code = Faker::Address.postcode
  region = Faker::Address.state
  address = Faker::Address.street_address
  start_time = "09:00"
  close_time = "21:00"
  nursing_room = "true"
  hot_water = "true"
  female_only = "unknown"
  rental_stroller = "false"
  baby_chair = "true"
  kids_space = "unknown"
  microwave = "true"
  sink = "true"
  diapers_trash_bin = "false"
  diaper_stand = "true"
  baby_scales = "unknown"
  memo = Faker::Lorem.sentence

  Spot.create!(
                name: name,
                postal_code: postal_code,
                region: region,
                address: address,
                start_time: start_time,
                close_time: close_time,
                nursing_room: nursing_room,
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
