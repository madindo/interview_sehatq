require "rails_helper"

describe "API Doctors" , :type => :request do

  it "making list request of doctors " do
    3.times {FactoryBot.create(:doctor)}
    get "/doctors"
    expect(response.content_type).to eq('application/json')
    expect(response.status).to eql(200)
  end

  it "makes list request of doctors with its schedules" do
    currentdate = Date.today + 9.hours;
    @doctor = FactoryBot.create(:doctor)
    @schedule = FactoryBot.create(:schedule, 
        :user_id => rand(2..10), 
        :doctor_id => @doctor.id, 
        :start_date => currentdate, 
        :end_date => currentdate + 1.hour);
    get "/doctors/schedules"
    expect(response.content_type).to eq('application/json')
    expect(response.status).to eql(200)
  end

end  