class CreateBoxes < ActiveRecord::Migration[6.1]
  def change
    create_table :boxes do |t|
      t.string :name
      t.string :sku_prefix
      t.string :sku_postfix

      t.timestamps
    end

    create_table :drops do |t|
      t.belongs_to :box

      t.timestamps
    end
  end
end
