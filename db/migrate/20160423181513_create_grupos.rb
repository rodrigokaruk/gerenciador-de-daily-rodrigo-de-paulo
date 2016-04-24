class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :name
      t.integer :lider

      t.timestamps null: false
    end
  end
end
