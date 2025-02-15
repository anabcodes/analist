class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  # has_many :lists
  has_many :user_lists, dependent: :destroy
  has_many :lists, through: :user_lists
end
