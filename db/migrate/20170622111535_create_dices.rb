class CreateDices < ActiveRecord::Migration[5.0]
  def change
    create_table :dices do |t|
      t.string :name
      t.integer :edges

      t.timestamps
    end
  end
end
