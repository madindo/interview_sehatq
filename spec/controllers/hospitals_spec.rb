require "rails_helper"

describe "API Hospital" , :type => :request do

  it "making list request of hospitals " do
    3.times {FactoryBot.create(:hospital)}
    get "/hospital"
    expect(response.content_type).to eq('application/json')
    expect(response.status).to eql(200)
  end

end  