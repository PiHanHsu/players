class AddMoreColumns < ActiveRecord::Migration
  def change
  	add_column :players, :birthday, :datetime
  	add_column :players, :team, :string
  	add_column :players, :position, :string
  	add_column :players, :experience, :integer

  end
end
