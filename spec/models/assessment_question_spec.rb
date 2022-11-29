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
require 'rails_helper'

RSpec.describe AssessmentQuestion, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to(:question) }
    it { is_expected.to belong_to(:assessment) }
  end
end
