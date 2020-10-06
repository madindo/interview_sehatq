require "rails_helper"

describe "API authentication" , :type => :request do

  let!(:user) { FactoryBot.create(:user, email: 'madindo@gmail.com', password: 'madindo123') }

  it "making a login request without params " do
    post "/auth/login"
    expect(response.status).to eql(401)
  end

  it "makes a login request with params" do
    post "/auth/login", :params => {:email => 'madindo@gmail.com', :password => 'madindo123'}
    expect(response.status).to eql(200)
  end

  it "makes a login request with wrong password" do
    post "/auth/login", :params => {:email => 'madindo@gmail.com', :password => 'madindo321'}
    expect(response.status).to eql(401)
  end

end  