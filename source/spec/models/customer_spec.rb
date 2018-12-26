require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe "Associations" do
    it "has many charges" do
      assc = described_class.reflect_on_association(:charges)
      expect(assc.macro).to eq :has_many
    end
  end
end
