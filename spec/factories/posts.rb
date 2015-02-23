FactoryGirl.define do 
	factory :post do |f|
		f.title { Faker::Lorem.words(6)}
		f.body { Faker::Lorem.paragraph }
	end
end