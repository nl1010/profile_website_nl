class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :facility_name
      t.string :start_date
      t.string :end_date
      t.string :subject
      t.string :transcript
      t.text :detail

      t.timestamps
    end
  end
end
