class ChangeSlotNumberToInteger < ActiveRecord::Migration[8.0]
  def change
  change_column :contestants, :slot-number, :integer
  end
end
