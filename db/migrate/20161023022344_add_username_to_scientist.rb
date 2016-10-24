class AddUsernameToScientist < ActiveRecord::Migration[5.0]
  def change
    add_column :scientists, :username, :string
  end
end
