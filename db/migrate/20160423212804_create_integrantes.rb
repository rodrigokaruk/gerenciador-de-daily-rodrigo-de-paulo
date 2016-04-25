class CreateIntegrantes < ActiveRecord::Migration.drop_table :integrantes
  def change
    create_table :integrantes do |t|
      t.integer :grupo_id
      t.string :membros

      t.timestamps null: false
    end
  end
end
