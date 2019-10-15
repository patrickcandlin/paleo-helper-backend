class Createingredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :nutrition_facts

      t.timestamps
    end
  end
end
