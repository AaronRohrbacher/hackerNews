class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :user, :string
      t.column :url, :string

      t.timestamps
    end
  end
end
