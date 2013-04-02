class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :descricao
      t.string :categoria
      t.references :cardapio

      t.timestamps
    end
    add_index :items, :cardapio_id
  end
end
