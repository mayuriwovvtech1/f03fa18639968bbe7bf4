class CreateFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :follows do |t|
      t.integer  :user_id
      t.bigint  :followable_id
      t.string  :followable_type
      t.boolean :followed, default: false
      t.timestamps
    end
 
    add_index :follows, [:followable_type, :followable_id]
  end
end



