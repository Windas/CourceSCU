class Data::Article < ApplicationRecord
  self.table_name = :data_articles

  belongs_to :category, foreign_key: 'data_categories_id', class_name: 'Data::Category'
end
