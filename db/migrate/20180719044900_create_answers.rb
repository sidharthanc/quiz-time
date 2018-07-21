class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer  :question_id, null: false
      t.integer  :option_id, null: false
      t.timestamps null: false
    end
    add_foreign_key :answers, :questions, column: :question_id
    add_foreign_key :answers, :options, column: :option_id
  end
end
