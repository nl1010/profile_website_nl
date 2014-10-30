class CreatePatents < ActiveRecord::Migration
  def change
    create_table :patents do |t|
      t.string :title
      t.string :people_involved
      t.string :register_date
      t.string :status
      t.text :detail

      t.timestamps
    end
  end
end
