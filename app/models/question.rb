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
class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :assessment_questions
  has_many :assessments, through: :assessment_questions

  validates :label, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :question_type, presence: true

  # Question Types:
  QUESTION_TYPES = [
    MULTI = 'multiple-choice',
    DROPDOWN = 'dropdown',
    TEXT = 'text', # Think about this one??? v2?
    CHECKBOX = 'checkbox' # True || False
  ]

  # States
  # PENDING = 'pending'
  # ACTIVED = 'actived'
  # ARCHIVED = 'archived'

  # state_machine :state, initial: PENDING do
  #   event 'activate' do
  #     transition(PENDING => ACTIVED)
  #   end

  #   event 'archived' do
  #     transition([PENDING, ACTIVED] => ARCHIVED)
  #   end
  # end
end
