class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :registerable, :recoverable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable


  belongs_to :company

  def name
    email.split('@').first.capitalize
  end
end
