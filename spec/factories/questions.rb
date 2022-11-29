# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  label       :string
#  description :string
#  state       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :question do
    label { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }
  end
end
