class CreateLojas < ActiveRecord::Migration
  def change
    create_table :lojas do |t|
      t.string :nome
      t.string :descricao
      t.integer :cnpj

      t.timestamps
    end
  end
end
