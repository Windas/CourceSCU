class CreateDataVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :data_videos do |t|
      t.string :title,        null: false
      t.string :url,          null: false
      t.string :source
      t.boolean :active,      null: false, default: true
      t.boolean :published,   null: false, default: true
      t.datetime :published_at
      t.text :description

      t.references :data_categories

      t.timestamps
    end
  end
end
