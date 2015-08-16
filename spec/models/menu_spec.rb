require 'rails_helper'

RSpec.describe Menu, :type => :model do

  let(:menu) {FactoryGirl.build :menu}

  it "has relations" do
    should have_many :menu_items
    should have_many :items
  end

  it "can be saved" do
    expect(menu.save).to be_truthy
  end

end