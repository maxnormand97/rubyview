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
class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :assessment_questions
  has_many :assessments, through: :assessment_questions
end
