class CreatePins < ActiveRecord::Migration[5.1]
  def change
    create_table :pins do |t|
      t.string :image_url
      t.timestamps
      t.belongs_to :user, index: true
    end
  end
end
