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
class Assessment < ApplicationRecord
  belongs_to :user, optional: true
  has_many :assessment_questions
  has_many :questions, through: :assessment_questions

  validates :title, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
end
