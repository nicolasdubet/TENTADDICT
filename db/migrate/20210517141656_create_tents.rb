class CreateTents < ActiveRecord::Migration[6.0]
  def change
    create_table :tents do |t|
      t.string :name
      t.integer :number_of_couch
      t.string :season
      t.integer :weight

      t.timestamps
    end
  end
end
