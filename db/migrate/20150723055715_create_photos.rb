class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :url
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
