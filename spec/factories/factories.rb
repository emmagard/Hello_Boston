require 'faker'

FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password(5, 10) }
  end
end

FactoryGirl.define do
  factory :post do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph}
    url { Faker::Internet.url }
  end
end


# in console
# FactoryGirl.create(:user) - will save to database
# FactoryGirl.build(:user) - will not save to database
# FactoryGirl.create_list(:user, 3) - creates a list of new players
