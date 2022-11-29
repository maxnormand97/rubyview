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
require 'rails_helper'

RSpec.describe Assessment, type: :model do
  describe 'Associations' do
    it { is_expected.to have_many(:assessment_questions) }
  end
end
