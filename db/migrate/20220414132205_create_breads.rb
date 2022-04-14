class CreateBreads < ActiveRecord::Migration[7.0]
  def change
    create_table :breads do |t|
      t.string :name
      t.text :story

      t.timestamps
    end
  end
end
