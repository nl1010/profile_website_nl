class CreateInternships < ActiveRecord::Migration
  def change
    create_table :internships do |t|
      t.string :title
      t.string :company
      t.string :contry
      t.string :start_date
      t.string :end_date
      t.string :postion
      t.string :company_annotation
      t.text :detail

      t.timestamps
    end
  end
end
