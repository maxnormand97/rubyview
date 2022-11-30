# frozen_string_literal: true

class AddRefAnswerToQuestion < ActiveRecord::Migration[7.0]
  def change
    add_reference :answers, :question, type: :integer, foreign_key: true
  end
end
