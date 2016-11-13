class CreateDataBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :data_books do |t|
      t.string :title,        null: false, default: ""
      t.text :description
      t.boolean :active,      null: false, default: true
      t.boolean :published,   null: false, default: true
      t.datetime :published_at

      t.references :data_categories

      t.timestamps
    end
  end
end
