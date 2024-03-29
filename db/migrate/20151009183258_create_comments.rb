class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, default: '', null: false
      t.belongs_to :post, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
