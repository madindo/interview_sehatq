require 'faker'
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

User.new({ name: "Madindo", username: 'madindo', email: 'madindo@gmail.com', password: 'password', password_confirmation: 'password'}).save()

10.times do |index|
  Hospital.create([{name: Faker::Name.name, address: Faker::Address.full_address}])
  Doctor.create([{name: Faker::Name.name, email: Faker::Internet.email, title: Faker::Lorem.sentence(word_count: 3), phone: Faker::PhoneNumber.phone_number, address: Faker::Address.full_address, gender: Faker::Gender.binary_type, about: Faker::Lorem.sentence(word_count: 10) }])
  
  User.new({ name: Faker::Name.name, username: Faker::Internet.user_name, email: Faker::Internet.email, password: 'password', password_confirmation: 'password'}).save()

  currentdate = Date.today + (index + 1) + 9.hours;
  Schedule.create([{
    user_id: rand(2..10),
    doctor_id: rand(1..10),
    start_date: currentdate,
    end_date: currentdate + 1.hour
  }])

end
#Faker::Time.between_dates(from: currentdate, to: currentdate + 1.hour)