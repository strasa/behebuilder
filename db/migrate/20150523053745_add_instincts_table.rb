class AddInstinctsTable < ActiveRecord::Migration

  def change
    create_table :instincts do |t|
      t.string :name
      t.string :description
    end
  end

end
