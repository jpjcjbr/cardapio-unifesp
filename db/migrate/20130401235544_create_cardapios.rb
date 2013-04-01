class CreateCardapios < ActiveRecord::Migration
  def change
    create_table :cardapios do |t|
      t.date :data
      t.string :tipo

      t.timestamps
    end
  end
end
