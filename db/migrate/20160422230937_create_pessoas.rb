class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |c|
    	c.string :nome
    	c.date :nascimento
    end
  end
end
