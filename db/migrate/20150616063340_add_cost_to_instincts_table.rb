class AddCostToInstinctsTable < ActiveRecord::Migration
  def change
    add_column :instincts, :cost, :string
  end
end
