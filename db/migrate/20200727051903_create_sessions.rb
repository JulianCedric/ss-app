class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_join_table :tutors, :students, table_name: :sessions do |t|
      t.string :date
      t.boolean :preAssessmentCompletionStatus
      t.text :comment

      t.timestamps
    end
  end
end