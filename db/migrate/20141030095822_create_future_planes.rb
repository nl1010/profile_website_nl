class CreateFuturePlanes < ActiveRecord::Migration
  def change
    create_table :future_planes do |t|
      t.string :title
      t.string :planning_time
      t.text :detail

      t.timestamps
    end
  end
end
