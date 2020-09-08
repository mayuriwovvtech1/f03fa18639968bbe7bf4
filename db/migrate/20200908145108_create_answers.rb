class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.text :description
      t.integer :owner_id
      t.belongs_to :user
      t.belongs_to :question

      t.timestamps
    end
  end
end
