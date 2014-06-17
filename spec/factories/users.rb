
FactoryGirl.define do
	factory :user do |u|
		u.name		{Faker::Name.name}
		u.email		{Faker::Internet.email}
		u.password	{Faker::Internet.password}
	end
end