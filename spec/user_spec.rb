require 'faker'
require_relative '../user.rb'

RSpec.describe User do
  describe '.new' do
    it 'creates a new user instance with all attributes' do
      user = build(:user)
      puts attributes_for(User)
      expect(user).to be_a(User)
    end
  end

  describe 'attribute methods' do
    user = ''
    before(:each) { user = build(:user) }

    it "#name returns the User's name" do
      expect { user.name }.not_to raise_error
      expect(user.name).to be_a(String)
    end
    it "#name= resets the User's name" do
      user.name = 'Joey'
      expect(user.name).to eq('Joey')
    end
  end
end
