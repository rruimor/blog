FactoryGirl.define do
  factory :admin_user do
    name { Faker::Name.first_name}
    password "MyPassword"
    password_confirmation "MyPassword"
  end

end
