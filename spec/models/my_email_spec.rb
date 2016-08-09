require 'rails_helper'

RSpec.describe MyEmail, type: :model do
  it{ should validate_presence_of(:email).with_message("Woops! vacio")}
  it{ should validate_uniqueness_of(:email).with_message("Woops! vacio")}

  it "should not create with invalid email" do
      email = MyEmail.new(email:"chocko")
      expect(email.valid?).to be_falsy
  end
  it "should not create with invalid email" do
      email = MyEmail.new(email:"chocko@marquez.com")
      expect(email.valid?).to be_truthy
  end
end
