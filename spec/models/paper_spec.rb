require 'rails_helper'

RSpec.describe Paper, type: :model do

  describe "Paper" do

    it "should not validate without title" do
      expect(build(:paper, title:nil, venue: "mind 49: 433-460", year: 1950)).to_not be_valid
    end

    it "should not validate without venue" do
      expect(build(:paper, title: "computing machinery and intelligence", venue: nil, year: 1950)).to_not be_valid
    end

    it "should not validate with non-integer year" do
      expect(build(:paper, title: "computing machinery and intelligence", venue: "mind 49: 433-460", year: 'nineteen-fifty')).to_not be_valid
    end

  end

end