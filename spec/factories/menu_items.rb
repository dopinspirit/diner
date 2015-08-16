FactoryGirl.define do

  factory :menu_item do
    price 99.9
    menu_id {FactoryGirl.create(:menu).id}
    item_id {FactoryGirl.create(:item).id}
  end

end