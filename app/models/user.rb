class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
    :recoverable, :rememberable, :trackable, :validatable, :lockable

  validates :full_name, presence: true

  def devise_mailer
    UserMailer
  end
end
