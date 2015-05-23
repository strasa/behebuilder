class AddCategoryTable < ActiveRecord::Migration

  def change
    create_table :categories do |t|
      t.string :name
      t.integer :value
      t.integer :build_points
      t.integer :initial_hand
      t.integer :initial_hand_draw_per_atlas
      t.integer :draw
      t.integer :draw_per_atlas
    end

    add_index :categories, :value
  end

end
