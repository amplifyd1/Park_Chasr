require 'rails_helper'

RSpec.describe Park, type: :model do
  it {should have_many(:visits)}

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:image) }
end
