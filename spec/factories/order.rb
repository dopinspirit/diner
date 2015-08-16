FactoryGirl.define do

  factory :order do
    user_id {FactoryGirl.create(:user).id}
  end

end