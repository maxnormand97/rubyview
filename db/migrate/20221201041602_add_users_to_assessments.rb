class AddUsersToAssessments < ActiveRecord::Migration[7.0]
  def change
    add_reference :assessments, :user, type: :integer, foreign_key: true
  end
end
