require "rails_helper"

describe "API Schedule" , :type => :request do
  
  it "making list request of schedules " do
    @doctor = FactoryBot.create(:doctor)
    currentdate = Date.today + 1 + 9.hours
    post "/schedules", :params => { 
      :user_id => rand(2..10), 
      :doctor_id => @doctor.id, 
      :start_date => currentdate, 
      :end_date => currentdate + 1.hour
    }
    expect(response.content_type).to eq('application/json')
    expect(response.status).to eql(201)
  end

  it "making book request total of 10 user can book " do
    @doctor = FactoryBot.create(:doctor)
    10.times do |indeks|
      currentdate = Date.today + (indeks + 1) + 9.hours;
      post "/schedules", :params => { 
        :user_id => rand(2..10), 
        :doctor_id => @doctor.id, 
        :start_date => currentdate, 
        :end_date => currentdate + 1.hour
      }
    end
    
    currentdate = Date.today + 2 + 9.hours;
    post "/schedules", :params => { 
      :user_id => rand(2..10), 
      :doctor_id => @doctor.id, 
      :start_date => currentdate, 
      :end_date => currentdate + 1.hour
    }
    expect(response.body).to eql('{"errors":"A total of 10 users can book the same doctor."}')
  end
end  