class Data::Category < ApplicationRecord
  self.table_name = :data_categories

  has_many :books, foreign_key: 'data_categories_id', class_name: 'Data::Book'
  has_many :articles, foreign_key: 'data_categories_id', class_name: 'Data::Article'
  has_many :videos, foreign_key: 'data_categories_id', class_name: 'Data::Video'

end
