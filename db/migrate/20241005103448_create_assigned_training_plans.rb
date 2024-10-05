class CreateAssignedTrainingPlans < ActiveRecord::Migration[7.2]
  def change
    create_table :assigned_training_plans do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :training_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
