# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :label
      t.string :description
      t.string :state

      t.timestamps
    end
  end
end
