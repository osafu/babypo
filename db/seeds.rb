Faker::Config.locale = :ja

30.times do |n|
  email = Faker::Internet.email
  password = "password"
  User.create!( email: email,
                password: password,
                password_confirmation: password,
               )
end

30.times do |n|
    title = Faker::Lorem.sentence
    content = Faker::Lorem.sentence
    
    Spot.create!(title: title,
                content: content,
               )
end