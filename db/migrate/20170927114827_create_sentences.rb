class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.string :question
      t.string :answer

      t.timestamps null: false
    end
  end
end
