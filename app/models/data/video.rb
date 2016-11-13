class Data::Video < ApplicationRecord
  self.table_name = :data_videos

  belongs_to :category, foreign_key: 'data_categories_id', class_name: 'Data::Category'

end
