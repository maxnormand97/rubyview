# frozen_string_literal: true

# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  label       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#
class Answer < ApplicationRecord
  belongs_to :question
  validates :label, presence: true

end
