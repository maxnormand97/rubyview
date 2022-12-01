# frozen_string_literal: true

# == Schema Information
#
# Table name: assessments
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  state       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
FactoryBot.define do
  factory :assessment do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }
  end
end
