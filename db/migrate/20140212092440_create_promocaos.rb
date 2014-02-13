class CreatePromocaos < ActiveRecord::Migration
  def change
    create_table :promocaos do |t|
      t.string :nome
      t.date :data_inicio
      t.date :data_fim
      t.float :porcentagem

      t.timestamps
    end
  end
end
