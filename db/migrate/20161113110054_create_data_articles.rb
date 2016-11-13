class CreateDataArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :data_articles do |t|
      t.string :title,        null: false
      t.boolean :active,      null: false, default: true
      t.boolean :published,   null: false, default: true
      t.string :source
      t.datetime :published_at
      t.text :description
      t.text :content,        null: false
      t.references :data_categories

      t.timestamps
    end
  end
end
