class CreateToppingTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :topping_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
