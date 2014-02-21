class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :descricao
      t.float :preco
      t.references :loja, index: true
      t.references :promocao, index: true

      t.timestamps
    end
  end
end
