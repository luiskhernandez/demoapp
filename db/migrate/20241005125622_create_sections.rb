class CreateSections < ActiveRecord::Migration[7.2]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :position
      t.integer :expected_result_type
      t.references :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
