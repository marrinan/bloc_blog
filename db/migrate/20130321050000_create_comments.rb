class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.integer :post_id
      t.string :name
      t.string :email
      t.string :website
      t.text :comment
      t.references :author
      t.references :post

      t.timestamps
    end
    add_index :comments, :author_id
    add_index :comments, :post_id
  end
end
