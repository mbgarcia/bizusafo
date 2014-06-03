class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :email, presence: true

  has_many :stories
  has_many :ratings
  has_many :comments, :foreign_key => 'author_id'
end
