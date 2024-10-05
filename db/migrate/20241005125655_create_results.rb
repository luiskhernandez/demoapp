class CreateResults < ActiveRecord::Migration[7.2]
  def change
    create_table :results do |t|
      t.string :result_value
      t.date :date
      t.references :section, null: false, foreign_key: true
      t.references :athlete, null: false, foreign_key: { to_table: :profiles }

      t.timestamps
    end
  end
end
