class User < ApplicationRecord
  has_many :pets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :name, presence: true
  validates :category, inclusion: { in: ['dog', 'cat', 'guinea pig', 'turtle', 'rabbit'] }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
