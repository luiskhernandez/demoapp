class CreateWorkouts < ActiveRecord::Migration[7.2]
  def change
    create_table :workouts do |t|
      t.string :name, null: false
      t.integer :position
      t.text :description
      t.references :training_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
