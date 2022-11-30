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
require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'Associations' do
    it { is_expected.to have_many(:answers).dependent(:destroy) }
    it { is_expected.to have_many(:assessment_questions) }
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:label) }
    it { is_expected.to validate_uniqueness_of(:label).case_insensitive }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:type) }
  end
end
