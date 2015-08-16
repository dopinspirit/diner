require 'rails_helper'

RSpec.describe OrderItem, :type => :model do

  let(:order_item) {FactoryGirl.build :order_item}

  it "has relations" do
    should belong_to :item
    should belong_to :order
  end

  it "has validation" do
    should validate_presence_of :item
    should validate_presence_of :order

    should validate_presence_of :price
  end

  it "can be saved" do
    expect(order_item.save).to be_truthy
  end

end