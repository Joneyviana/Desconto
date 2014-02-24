class CreatePreferencia < ActiveRecord::Migration
  def change
    create_table :preferencia do |t|
      t.references :produto, index: true
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
