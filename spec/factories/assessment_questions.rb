# == Schema Information
#
# Table name: assessment_questions
#
#  id            :integer          not null, primary key
#  question_id   :integer
#  assessment_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
FactoryBot.define do
  factory :assessment_question do
    
  end
end
