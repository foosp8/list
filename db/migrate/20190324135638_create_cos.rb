class CreateCos < ActiveRecord::Migration[5.0]
  def change
    create_table :cos do |t|
      t.text :name
      t.string :add
      t.integer :tel

      t.timestamps
    end
  end
end
