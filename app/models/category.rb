class Category < ApplicationRecord
  validates :name, presence: true
  has_many :course_categories

  has_many :courses, through: :course_categories, dependent: :destroy
end
