# frozen_string_literal: true

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
#  type        :string
#
FactoryBot.define do
  factory :question do
    label { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }
    type { Question::CHECKBOX }
  end
end
