class CreateBases < ActiveRecord::Migration[6.0]
  def change
    create_table :bases do |t|
      t.references :base_type, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
