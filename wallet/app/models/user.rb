class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :firstname, presence: true, length: {maximum: 50}
  validates :lastname, presence: true, length: {maximum: 50}

  
  has_many :expenses, dependent: :destroy
  has_many :payments, dependent: :destroy

end
