# frozen_string_literal: true

class CreateAssessments < ActiveRecord::Migration[7.0]
  def change
    create_table :assessments do |t|
      t.string :title
      t.string :description
      t.string :state

      t.timestamps
    end
  end
end
