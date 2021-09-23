class Course < ApplicationRecord
  # validates :title, presence: true
  # validates :description, presence: true

  belongs_to :user, class_name: 'User'
  has_many :course_categories
  has_one_attached :image

  has_many :categories, through: :course_categories, dependent: :destroy
end
