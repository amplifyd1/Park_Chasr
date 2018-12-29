require 'faker'
factory :user do |f|
  f.email { 'wes@wes.com'}
  f.password { 'password' }
  f.address { Faker::Address.full_address }
end

factory :invalid_user do |f|
  f.email nil
end
