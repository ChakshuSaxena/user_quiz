class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :first_option
      t.string :second_option
      t.string :third_option
      t.string :fourth_option
      t.string :correct_answer
      t.references :exam, foreign_key: true

      t.timestamps
    end
  end
end
