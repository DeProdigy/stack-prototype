class Add < ActiveRecord::Migration
  def change
    add_column :posts, :content_type, :string, default: '', null: false
  end
end
