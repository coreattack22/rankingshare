class AddColumnsToRankings < ActiveRecord::Migration[5.1]
  def change
    add_column :rankings, :delete_flg, :boolean, :default=>false
  end
end
