class ChangeColumnNameStrandInZergToStrain < ActiveRecord::Migration[5.0]
  def change
  	rename_column :zergs, :strand, :strain
  end
end
