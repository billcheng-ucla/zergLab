class ChangeColumnNameTypeInZergToSpecie < ActiveRecord::Migration[5.0]
  def change
  	rename_column :zergs, :type, :specie
  end
end
