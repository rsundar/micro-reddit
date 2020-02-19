class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.string :text
      t.string :belongs_to
      t.string :user
      t.string :belongs_to
      t.string :post

      t.timestamps
    end
  end
end
