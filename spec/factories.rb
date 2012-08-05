FactoryGirl.define do
	factory :user do 				#Telling FactoryGirl that subsequent definition is for a User model object
		name 	"Michael Hartl"
		email 	"michael@example.com"
		password 	"foobar"
		password_confirmation 	"foobar"
	end
end