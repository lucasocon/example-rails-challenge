require 'rails_helper'

RSpec.describe Charge, type: :model do
  describe "Associations" do
    it "belongs to customer" do
      assc = described_class.reflect_on_association(:customer)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
