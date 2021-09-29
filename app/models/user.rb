class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true
  validates :lastname, presence: true
  validates :age, presence: true

  has_many :courses, class_name: 'Course', foreign_key: :user_id, dependent: :destroy
end
