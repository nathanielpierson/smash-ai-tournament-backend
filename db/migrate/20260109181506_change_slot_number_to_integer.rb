class ChangeSlotNumberToInteger < ActiveRecord::Migration[8.0]
  def change
    change_column :contestants, :slot_number, :integer, using: 'CASE WHEN slot_number = \'\' THEN NULL ELSE slot_number::integer END'
  end
end
