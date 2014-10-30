class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :name
      t.string :professioncy
      t.text :detail

      t.timestamps
    end
  end
end
