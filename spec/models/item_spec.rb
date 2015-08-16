require 'rails_helper'

RSpec.describe Item, :type => :model do

  let(:item) {FactoryGirl.build :item}

  it "has relations" do
    should have_many :menu_items
    should have_many :menus
  end

  it "can be saved" do
    expect(item.save).to be_truthy
  end

end