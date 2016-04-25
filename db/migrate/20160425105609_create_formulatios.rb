class CreateFormulatios < ActiveRecord::Migration
  def change
    create_table :formulatios do |t|
      t.integer :pessoa_id
      t.string :tipo
      t.text :conteudo

      t.timestamps null: false
    end
  end
end
