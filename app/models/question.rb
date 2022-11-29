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
class Question < ApplicationRecord
end
