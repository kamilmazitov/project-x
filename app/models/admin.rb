class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :registerable, :confirmable, :lockable, :timeoutable, :omniauthable,
  # :recoverable

  devise :database_authenticatable, :rememberable, :trackable, :validatable
end
