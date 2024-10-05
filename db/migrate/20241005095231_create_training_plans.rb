class CreateTrainingPlans < ActiveRecord::Migration[7.2]
  def change
    create_table :training_plans do |t|
      t.string :name
      t.string :description
      t.integer :plan_type
      t.references :author, null: false, foreign_key: { to_table: :profiles }

      t.timestamps
    end
  end
end
