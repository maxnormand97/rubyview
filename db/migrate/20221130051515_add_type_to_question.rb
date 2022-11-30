# frozen_string_literal: true

class AddTypeToQuestion < ActiveRecord::Migration[7.0]
  def change
    remove_column :answers, :type
    add_column :questions, :type, :string
  end
end
