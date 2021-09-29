class CreateDrops < ActiveRecord::Migration[6.1]
  def change
    create_table :drops do |t|
      t.string :name
      t.belongs_to :box
      t.timestamps
    end

    create_table :entities do |t|
      
      t.belongs_to :drop
      t.timestamps
    end

  end
end
