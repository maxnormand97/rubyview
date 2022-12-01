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
require 'rails_helper'

RSpec.describe Assessment, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to(:user).optional }
    it { is_expected.to have_many(:assessment_questions) }
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_uniqueness_of(:title).case_insensitive }
    it { is_expected.to validate_presence_of(:description) }
  end
end
