class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :data_de_nascimento
      t.string :email

      t.timestamps
    end
  end
end
