FactoryGirl.define do
	factory :user do 				#Telling FactoryGirl that subsequent definition is for a User model object
		#name 	"Michael Hartl"
		#email 	"michael@example.com"
		sequence(:name) { |n| "Person #{n}" }
		sequence(:email) { |n| "person_#{n}@example.com"}
		password 	"foobar"
		password_confirmation 	"foobar"

		factory :admin do
			admin true
		end
	end
end