class AddSideBagSlotsToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :side_bag_slots, :integer, default: 5
  end
end
