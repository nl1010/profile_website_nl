class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.string :title
      t.string :company
      t.string :start_date
      t.string :end_date
      t.string :position
      t.text :detail

      t.timestamps
    end
  end
end
