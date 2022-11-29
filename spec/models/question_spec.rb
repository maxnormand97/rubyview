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
require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'Associations' do
    it { is_expected.to have_many(:answers).dependent(:destroy) }
  end
end
