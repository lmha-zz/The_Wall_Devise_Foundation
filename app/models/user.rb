class User < ActiveRecord::Base
  has_many :messages, dependent: :delete_all
  has_many :comments, dependent: :delete_all

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, presence: true, format: { with: /\A[-a-z]+\z/i }

end