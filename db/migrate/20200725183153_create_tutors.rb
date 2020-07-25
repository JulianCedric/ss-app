class CreateTutors < ActiveRecord::Migration[6.0]
  def change
    create_table :tutors do |t|
      t.integer :id
      t.string :name
      t.string :username
      t.string :pwd
      t.integer :yearsExperience
      t.string :bio

      t.timestamps
    end
  end
end
