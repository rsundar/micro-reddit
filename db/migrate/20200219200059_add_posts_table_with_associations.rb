class AddPostsTableWithAssociations < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :body
      t.string :post
      t.belongs_to :user, foreign_key: true
      
      t.timestamps
    end
  end
end
