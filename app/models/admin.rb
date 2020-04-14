class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable

  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable, :recoverable

  def devise_mailer
    AdminMailer
  end
end
