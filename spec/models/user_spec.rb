require 'rails_helper'

RSpec.describe User, type: :model do
  it {should have_many(:visits)}

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:address) }
end
