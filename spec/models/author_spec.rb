require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "#name" do
    it "should return the full name" do
      expect(build(:author).name).to eql("Alan Turing")
    end
  end

  describe "Author" do
    it "should not validate without last name" do
      expect(build(:author, id:nil, last_name:nil, homepage:"http://example.com")).to_not be_valid
    end
  end
end
