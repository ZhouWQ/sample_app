require 'spec_helper'

describe "UsersPages" do
	subject{page}

	describe "Signup page" do
		before {visit signup_path}

		let(:submit) {"Create my account"}

		describe "with invalid information" do
			it " should not create a user" do
				expect {click_button submit}.not_to change( User, :count)
			end
		end

		describe "with valid information" do
			before do
				fill_in "Name", with: "Example User"
				fill_in "Email", with: "user@example.com"
				fill_in "Password", with: "123456"
				fill_in "Confirmation", with: "123456"
			end

			it "should create a user" do
				expect { click_button submit}.to change( User, :count).by(1)
			end
		end

		it { should have_content('Sign Up')}
		it { should have_title("Sign up")}
	end

	describe "profile page" do
		before { visit user_path(user) }
		let(:user) { FactoryGirl.create(:user) } 

		it { should have_content(user.name) }
		it { should have_title(user.name ) }
	end
end
