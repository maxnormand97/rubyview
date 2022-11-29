class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :title
      t.string :description
      t.string :state

      t.timestamps
    end
  end
end
