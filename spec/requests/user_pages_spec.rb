require 'spec_helper'

describe "UserPages" do
  subject { page }
  before {visit signup_path}
  describe "Signup page" do
    it { should have_selector('h1', text: 'Sign up')}
    it { should have_selector('title', text: full_title('Sign up')) }
  end
end
