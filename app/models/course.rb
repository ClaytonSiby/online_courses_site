class Course < ApplicationRecord
  validates :title, presence: true
  validates :image, presence: true
  validates :description, presence: true

  belongs_to :user
  has_many :course_categories

  has_many :categories, through: :course_categories, dependent: :destroy
end
