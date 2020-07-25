class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.references :tutor, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.string :date
      t.boolean :completionStatus
      t.string :comment

      t.timestamps
    end
  end
end
