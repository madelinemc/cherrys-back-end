class CreateToppings < ActiveRecord::Migration[6.0]
  def change
    create_table :toppings do |t|
      t.references :topping_type, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
