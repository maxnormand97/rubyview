# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  label       :string
#  type        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#
require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to(:question) }
  end
end
