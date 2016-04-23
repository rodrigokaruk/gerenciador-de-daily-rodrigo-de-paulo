class CreateGrupo < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
    	t.string :nome
    	t.integer :lider
    	t.timestamps
    end
  end
end
