class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer  :question_id, null: false
      t.string   :description
      t.timestamps null: false
    end
    add_foreign_key :options, :questions, column: :question_id
  end
end
