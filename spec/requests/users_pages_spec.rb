require 'spec_helper'

describe "UsersPages" do
	subject{page}

	describe "Signup page" do
		before {visit Signup_path}

		it { should have_content('Sign up')}
		it { should have_title("Ruby | Sign up")}
	end
end
