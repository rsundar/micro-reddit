class RenameCommentToBody < ActiveRecord::Migration[6.0]
  def up
    change_column :comments, :comment, :body 
  end

  def down
    change_column :comments, :body, :comment
  end
end
