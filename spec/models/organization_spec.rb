require 'rails_helper'

describe Organization do
  it "validates the presence of the name" do
    organization = Organization.new
    organization.valid?
    expect(organization.errors[:name].present?).to eq(true)

    organization.name = "Habitat for Humanity"
    organization.valid?
    expect(organization.errors[:name].present?).to eq(false)
  end




  it "validates the uniqueness of the name" do
    Organization.create!(name: "MADD")
    organization = Organization.new
    organization.name = "MADD"
    organization.valid?
    expect(organization.errors[:name].present?).to eq(true)

    organization.name = "Humane Society"
    organization.valid?
    expect(organization.errors[:name].present?).to eq(false)
  end
end
