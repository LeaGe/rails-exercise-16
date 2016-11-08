require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "#name" do
    it "should return the full name" do
      expect(build(:author).name).to eql("Alan Turing")
    end
  end

end
