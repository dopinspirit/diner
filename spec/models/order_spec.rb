require 'rails_helper'

RSpec.describe Order, :type => :model do

  let(:order) {FactoryGirl.build :order}

  it "has relations" do
    should have_many :order_items
  end

  it "can be saved" do
    expect(order.save).to be_truthy
  end

  let(:order_item) {FactoryGirl.build :order_item}

  it "will destroy related Oreder Items" do
    expect{order_item.save}.to change{OrderItem.count}.by 1
    expect{order_item.order.destroy}.to change{OrderItem.count}.by -1
  end

end