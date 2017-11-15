class NewPosts < ActiveRecord::Migration[5.1]
  def change

    drop_table :posts

    create_table :posts do |t|
      t.column :title, :string
      t.column :posted_by, :string
      t.column :url, :string

      t.timestamps
    end
  end
end
