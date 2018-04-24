class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :body
      t.text :description
      t.timestamps
      t.belongs_to :user, index: true
    end
  end
end
