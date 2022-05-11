require 'rails_helper'

RSpec.describe User, type: :model do

subject { :user } do 
  User.create!(username: "kayla123", password: "password")
end





it { should validate_presence_of(:username) }
it { should validate_uniqueness_of(:username) }

end
