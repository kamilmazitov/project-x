class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :registerable, :confirmable, :lockable, :timeoutable, :omniauthable

  devise :database_authenticatable, :rememberable, :trackable, :validatable, :recoverable

  def devise_mailer
    AdminMailer
  end

end
