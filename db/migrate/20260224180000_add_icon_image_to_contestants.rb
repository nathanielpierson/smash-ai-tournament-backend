class AddIconImageToContestants < ActiveRecord::Migration[8.0]
  def change
    add_column :contestants, :icon_image, :string
  end
end
