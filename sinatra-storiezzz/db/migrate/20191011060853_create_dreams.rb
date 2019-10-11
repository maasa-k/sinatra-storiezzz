class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :description
      t.string :category
      t.integer :user_id
    end
  end
end
