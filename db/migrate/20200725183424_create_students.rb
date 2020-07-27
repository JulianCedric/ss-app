class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :parentName
      t.string :parentEmail
      t.string :school

      t.timestamps
    end
  end
end
