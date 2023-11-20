class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Enum de roles
  enum role: [:user, :cajero, :quimico, :bodeguero, :admin]
  
  # Defino una foto al usuario
  has_one_attached :photo
end