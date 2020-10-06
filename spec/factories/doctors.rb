FactoryBot.define do 
  factory :doctor do
    name { "User1" }
    email { "test@example.com" }
    title { "title" }
    phone { "03848384843" }
    address { "Jl. jalan" }
    gender { "Male" }
    about { "about" }
  end
end