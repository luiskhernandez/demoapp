class CreateProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :role
      t.string :display_name
      t.references :profilable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
