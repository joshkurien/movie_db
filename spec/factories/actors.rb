FactoryGirl.define do
	factory :actor do |act|
		act.name	{Faker::Name.name }
	end
end