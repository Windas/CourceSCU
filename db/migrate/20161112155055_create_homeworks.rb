class CreateHomeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :data_homeworks do |t|
      t.string :title,      null: false
      t.text :description,  null: false
      t.boolean :active,    null: false, default: true
      t.boolean :published, null: false, default: true
      t.datetime :published_at

      t.timestamps
    end
  end
end
