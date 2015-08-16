require 'rails_helper'

RSpec.describe MenuItem, :type => :model do

  let(:menu_item) {FactoryGirl.build :menu_item}

  it "has relations" do
    should belong_to :menu
    should belong_to :item
  end

  it "has validation" do
    should validate_presence_of :item
    should validate_presence_of :menu

    should validate_presence_of :price
  end

  it "can be saved" do
    expect(menu_item.save).to be_truthy
  end

end