class CreateTutors < ActiveRecord::Migration[6.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :username
      t.string :password
      t.integer :yearsExperience

      t.timestamps
    end
  end
end
