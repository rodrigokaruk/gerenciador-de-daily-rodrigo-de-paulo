class CreateIntegrantes < ActiveRecord::Migration
  def change
    create_table :integrantes do |t|
      t.integer :grupo_id
      t.string :membros

      t.timestamps null: false
    end
  end
end
