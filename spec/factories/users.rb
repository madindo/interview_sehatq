FactoryBot.define do 
  factory :user do
    name { "User1" }
    username { "UserLastName" }
    email { "test@example.com" }
    password { "012345" }
  end
end