class CreateAnswerTags < ActiveRecord::Migration[4.2]
  def change
    create_table :answer_tags, id: :integer, auto_increment: true do |t|
      t.references :answer, :integer, index: true, foreign_key: true
      t.references :tag_prompt_deployment, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :value

      t.timestamps null: false
    end
  end
end
