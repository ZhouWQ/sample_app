FactoryGirl.define do
	factory :user do
		sequence (:name) { |n| "Person_#{n}" }
		sequence (:email) { |n| "Person_#{n}@e.com"}
		password "123456"
		password_confirmation "123456"

		factory :admin do
			admin true
		end
	end

end