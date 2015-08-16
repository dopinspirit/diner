FactoryGirl.define do

  factory :order_item do
    price 99.9
    order_id {FactoryGirl.create(:order).id}
    item_id {FactoryGirl.create(:item).id}
  end

end