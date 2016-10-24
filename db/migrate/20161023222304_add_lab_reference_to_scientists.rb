class AddLabReferenceToScientists < ActiveRecord::Migration[5.0]
  def change
    add_reference :scientists, :lab, foreign_key: true
  end
end
