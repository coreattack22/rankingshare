class RenameColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :answers, :answerer_id, :user_id
  end
end
