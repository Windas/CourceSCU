class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def find_categories
    Data::Category.find self.focus.split
  end

  def find_category id
    Data::Category.find(id).name
  end
end
