class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :name
      t.integer :graduation_year
      t.text :email
      t.boolean :contact

      t.timestamps
    end
  end
end
