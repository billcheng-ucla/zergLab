class CreateZergs < ActiveRecord::Migration[5.0]
  def change
    create_table :zergs do |t|
      t.string :identification
      t.string :type
      t.string :strand
      t.string :image
      t.belongs_to :lab, foreign_key: true

      t.timestamps
    end
  end
end
