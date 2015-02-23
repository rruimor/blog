FactoryGirl.define do
  factory :admin_user do
    name { Faker::Name.first_name}
    password_digest "MyPassword"
  end

end
