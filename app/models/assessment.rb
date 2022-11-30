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
#
class Assessment < ApplicationRecord
  has_many :assessment_questions
  has_many :questions, through: :assessment_questions
end
