class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :player, index: true
      t.string :name
      t.text   :description
      t.timestamps
    end
  end
end
