class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.string :status
      t.integer :priority
      t.text :involved_tool
      t.text :involved_team
      t.text :detail

      t.timestamps
    end
  end
end
