
FactoryGirl.define do
	factory :movie do |mov|
		mov.name	{Faker::Name.name }
	end
end