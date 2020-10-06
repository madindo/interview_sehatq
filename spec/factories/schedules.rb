FactoryBot.define do 
  factory :schedule do
    doctor_id { 1 }
    user_id { 1 }
    start_date { DateTime.now  }
    end_date { DateTime.now  }
  end
end