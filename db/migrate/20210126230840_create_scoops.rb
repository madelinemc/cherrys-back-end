class CreateScoops < ActiveRecord::Migration[6.0]
  def change
    create_table :scoops do |t|
      t.references :order, null: false, foreign_key: true
      t.references :flavor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
