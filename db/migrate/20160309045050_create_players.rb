class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :username
      t.boolean :is_male
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
